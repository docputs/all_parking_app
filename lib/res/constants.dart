import 'package:all_parking/res/theme.dart';
import 'package:flutter/widgets.dart';

class Constants {
  static const splashRoute = '/';
  static const homeRoute = '/home';
  static const signInRoute = '/signIn';
  static const signUpRoute = '/signUp';

  static const addParkingLotRoute = '/home/add-parking-lot';
  static const selectParkingLotRoute = '/home/select-parking-lot';
  static const manageEmployeesRoute = '/home/manage-employees';
  static const reportsRoute = '/home/reports';
  static const manageParkingLotsRoute = '/home/manage-parking-lots';
  static const editInformationRoute = '/home/edit-information';
  static const parkedVehicles = '/home/manage-parked-vehicles';
  static const editParkingLotRoute = '/home/manage-parking-lots/edit-parking-lot';
  static const checkInVehicleRoute = '/home/check-in';
  static const checkOutVehicleRoute = '/home/check-out';

  static final cepRegex = RegExp(r"^\d{5}-\d{3}$");
  static final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final licensePlateRegex = RegExp(r"^[A-Z]{3}[0-9][0-9A-Z][0-9]{2}$");

  static const cpfMask = '###.###.###-##';
  static const cepMask = '#####-###';
  static const phoneNumberMask = '(##) #####-####';

  static final defaultBoxShadow = const BoxShadow(offset: Offset(0, 15), blurRadius: 15, color: AppColors.shadowColor);
  static final defaultFormFieldShadow =
      const BoxShadow(offset: Offset(1, 3), blurRadius: 5, color: AppColors.shadowColor, spreadRadius: -3);
}
