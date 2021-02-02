import 'package:all_parking/features/auth/presentation/sign_in/screens/sign_in_screen.dart';
import 'package:all_parking/features/auth/presentation/sign_up/screens/sign_up_screen.dart';
import 'package:all_parking/features/auth/presentation/splash/splash_screen.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/screens/add_parking_lot_screen.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/check_in_screen.dart';
import 'package:all_parking/features/parking/presentation/home/screens/home_screen.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/manage_parking_lots_screen.dart';
import 'package:all_parking/features/parking/presentation/select_parking_lot/screens/select_parking_lot_screen.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Constants.splashRoute:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
      break;
    case Constants.homeRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
      break;
    case Constants.signInRoute:
      return MaterialPageRoute(builder: (context) => const SignInScreen());
      break;
    case Constants.signUpRoute:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
      break;
    case Constants.addParkingLotRoute:
      return MaterialPageRoute(builder: (context) => AddParkingLotScreen());
      break;
    case Constants.selectParkingLotRoute:
      return MaterialPageRoute(builder: (context) => SelectParkingLotScreen());
      break;
    case Constants.manageParkingLotsRoute:
      return MaterialPageRoute(builder: (context) => ManageParkingLotsScreen());
      break;
    case Constants.editParkingLotRoute:
      final editedParkingLot = settings.arguments as ParkingLot;
      return MaterialPageRoute(builder: (context) => AddParkingLotScreen(editedParkingLot: editedParkingLot));
      break;
    case Constants.checkInVehicleRoute:
      return MaterialPageRoute(builder: (context) => const CheckInScreen());
      break;
    default:
      return MaterialPageRoute(builder: (context) => Scaffold(body: Center(child: Text('rota nao encontrada'))));
  }
}
