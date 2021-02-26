import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

class EmailModel {
  final ParkingLot parkingLot;
  final Manager manager;

  const EmailModel({@required this.manager, @required this.parkingLot});
}

@lazySingleton
class EmailService {
  final http.Client _client;

  const EmailService(this._client);

  Future<void> sendEmail(EmailModel model) {
    final manager = model.manager;
    final parkingLot = model.parkingLot;
    final url =
        'https://us-central1-estacionamentos-5b6f2.cloudfunctions.net/sendMail?email=${manager.email}&name=${manager.displayName}&title=${parkingLot.title}&address=${parkingLot.address.street}&cep=${parkingLot.address.cep}';

    return _client.get(url);
  }
}
