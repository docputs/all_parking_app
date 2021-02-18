import 'package:all_parking/features/parking/presentation/manage_employees/screens/add_employee_screen.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/screens/manage_employees_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'features/auth/presentation/sign_in/screens/sign_in_screen.dart';
import 'features/auth/presentation/sign_up/screens/sign_up_screen.dart';
import 'features/auth/presentation/splash/splash_screen.dart';
import 'features/parking/domain/entities/parked_vehicle.dart';
import 'features/parking/domain/entities/parking_lot.dart';
import 'features/parking/presentation/add_parking_lot/screens/add_parking_lot_screen.dart';
import 'features/parking/presentation/check-in/screens/check_in_screen.dart';
import 'features/parking/presentation/check_out/screens/check_out_screen.dart';
import 'features/parking/presentation/home/screens/home_screen.dart';
import 'features/parking/presentation/manage_parking_lots/screens/manage_parking_lots_screen.dart';
import 'features/parking/presentation/parked_vehicles/screens/parked_vehicle_details_screen.dart';
import 'features/parking/presentation/parked_vehicles/screens/parked_vehicles_screen.dart';
import 'features/parking/presentation/reports/screens/reports_screen.dart';
import 'features/parking/presentation/select_parking_lot/screens/select_parking_lot_screen.dart';
import 'res/constants.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Constants.splashRoute:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
      break;
    case Constants.homeRoute:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
      break;
    case Constants.signInRoute:
      return MaterialPageRoute(builder: (context) => const SignInScreen());
      break;
    case Constants.signUpRoute:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
      break;
    case Constants.addParkingLotRoute:
      return MaterialPageRoute(builder: (context) => const AddParkingLotScreen());
      break;
    case Constants.selectParkingLotRoute:
      return MaterialPageRoute(builder: (context) => const SelectParkingLotScreen());
      break;
    case Constants.manageParkingLotsRoute:
      return MaterialPageRoute(builder: (context) => const ManageParkingLotsScreen());
      break;
    case Constants.editParkingLotRoute:
      final editedParkingLot = settings.arguments as ParkingLot;
      return MaterialPageRoute(builder: (context) => AddParkingLotScreen(editedParkingLot: editedParkingLot));
      break;
    case Constants.checkInVehicleRoute:
      return MaterialPageRoute(builder: (context) => const CheckInScreen());
      break;
    case Constants.parkedVehiclesRoute:
      return MaterialPageRoute(builder: (context) => const ParkedVehiclesScreen());
      break;
    case Constants.parkedVehicleDetailsRoute:
      final vehicle = settings.arguments as ParkedVehicle;
      return MaterialPageRoute(builder: (context) => ParkedVehicleDetailsScreen(vehicle));
      break;
    case Constants.checkOutVehicleRoute:
      final vehicle = settings.arguments as ParkedVehicle;
      return MaterialPageRoute(builder: (context) => CheckOutScreen(vehicle));
      break;
    case Constants.reportsRoute:
      return MaterialPageRoute(builder: (context) => const ReportsScreen());
      break;
    case Constants.manageEmployeesRoute:
      return MaterialPageRoute(builder: (context) => const ManageEmployeesScreen());
      break;
    case Constants.addEmployeeRoute:
      return MaterialPageRoute<bool>(builder: (context) => const AddEmployeeScreen());
      break;
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text('rota nao encontrada'))));
  }
}
