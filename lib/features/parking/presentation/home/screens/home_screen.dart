import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/home_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../auth/presentation/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()..add(const HomeEvent.watchAllStarted())),
        BlocProvider(create: (context) => getIt<AddParkingLotBloc>()),
      ],
      child: AppScaffold(
        customAppBar: _buildCustomAppBar(context),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('LOGOUT'),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                },
              ),
            ],
          ),
        ),
        scrollable: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.directions_car),
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) {
                Navigator.of(context).pushReplacementNamed(Constants.signInRoute);
              },
              orElse: () {},
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Text('Terça-feira, 19 de janeiro', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
              const SizedBox(height: 40),
              Text(
                'Cartões',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.accentColor, width: 15)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('27 restantes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          Text('23 de 50 cartões usados', style: TextStyle(color: AppColors.textColor, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Veículos estacionados',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final vehicle = parkedVehicles[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(vehicle.title),
                    subtitle: Text(vehicle.licensePlate),
                    leading: CircleAvatar(backgroundColor: convertVehicleColor(vehicle.color)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  );
                },
                itemCount: 3,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text('Estacionamento X'),
      actions: [
        IconButton(
          icon: Icon(Icons.place),
          onPressed: () {
            Navigator.of(context).pushNamed(Constants.addParkingLotRoute);
          },
        ),
      ],
    );
  }

  Color convertVehicleColor(VehicleColor color) {
    switch (color) {
      case VehicleColor.black:
        return Colors.black;
        break;
      case VehicleColor.red:
        return Colors.red.shade700;
        break;
      case VehicleColor.blue:
        return Colors.blue;
        break;
      case VehicleColor.gray:
        return Colors.black54;
        break;
      case VehicleColor.silver:
        return Colors.black26;
        break;
      default:
        return Colors.black;
    }
  }
}

final parkedVehicles = [
  ParkedVehicle(
    id: QRCode('1'),
    title: 'Ford Fiesta',
    licensePlate: 'GAF1246',
    color: VehicleColor.black,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
  ),
  ParkedVehicle(
    id: QRCode('2'),
    title: 'Fiat Palio',
    licensePlate: 'DMB2871',
    color: VehicleColor.gray,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
  ),
  ParkedVehicle(
    id: QRCode('3'),
    title: 'Hyundai i30',
    licensePlate: 'ABC1234',
    color: VehicleColor.red,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
  ),
];
