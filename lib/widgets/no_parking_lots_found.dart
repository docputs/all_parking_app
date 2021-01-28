import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class NoParkingLotsFound extends StatelessWidget {
  const NoParkingLotsFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/undraw_vehicle_sale_a645.png'),
        const SizedBox(height: 20),
        Text('Nenhum estacionamento encontrado', style: TextStyle(color: AppColors.textColor)),
        const SizedBox(height: 10),
        Text('Toque em + para adicionar', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor)),
      ],
    );
  }
}
