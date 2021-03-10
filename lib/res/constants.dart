import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:flutter/widgets.dart';

import 'theme.dart';

class Constants {
  const Constants._();

  static const employeeKey = 'employee-token';
  static const qrCodePdfPath = 'qr_code.pdf';
  static const qrCodePngPath = 'qr_code.png';

  static const splashRoute = '/';
  static const homeRoute = '/home';
  static const signInRoute = '/sign-in';
  static const signUpRoute = '/sign-up';
  static const codeScannerRoute = '/home/scan-code';
  static const addParkingLotRoute = '/home/add-parking-lot';
  static const generateCodesRoute = '/home/add-parking-lot/generate-codes';
  static const selectParkingLotRoute = '/home/select-parking-lot';
  static const manageEmployeesRoute = '/home/manage-employees';
  static const addEmployeeRoute = '/home/manage-employees/add-employee';
  static const reportsRoute = '/home/reports';
  static const manageParkingLotsRoute = '/home/manage-parking-lots';
  static const editInformationRoute = '/home/edit-information';
  static const parkedVehiclesRoute = '/home/parked-vehicles';
  static const parkedVehicleDetailsRoute = '/home/parked-vehicles/:id';
  static const editParkingLotRoute = '/home/manage-parking-lots/edit-parking-lot';
  static const checkInVehicleRoute = '/home/check-in';
  static const checkOutVehicleRoute = '/home/check-out';

  static final cepRegex = RegExp(r"^[0-9]{5}-[0-9]{3}$");
  static final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final licensePlateRegex = RegExp(r"^[A-Z]{3}[0-9][0-9A-Z][0-9]{2}$");
  static final phoneNumberRegex = RegExp(r"^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}-[0-9]{4}$");
  static final qrCodeRegex = RegExp(r"^[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$");

  static const cpfMask = '###.###.###-##';
  static const cepMask = '#####-###';
  static const phoneNumberMask = '(##) #####-####';

  static final defaultBoxShadow = const BoxShadow(offset: Offset(0, 15), blurRadius: 15, color: AppColors.shadowColor);
  static final defaultFormFieldShadow =
      const BoxShadow(offset: Offset(1, 3), blurRadius: 5, color: AppColors.shadowColor, spreadRadius: -3);
  static final defaultBorderRadius = BorderRadius.circular(10);

  static String qrCodesFileName(ParkingLot parkingLot) => '${parkingLot.id.split('-')[0]}.pdf';
}
