import 'package:all_parking/features/parking/presentation/home/screens/components/drawer_list_tile.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';

class DrawerMessages {
  static final items = [
    const DrawerItem('Início', icon: Icons.home, route: Constants.homeRoute),
    const DrawerItem('Gerenciar funcionários', icon: Icons.person, route: Constants.manageEmployeesRoute),
    const DrawerItem('Gerenciar estacionamentos', icon: Icons.local_parking, route: Constants.manageParkingLotsRoute),
    const DrawerItem('Relatórios', icon: Icons.history, route: Constants.reportsRoute),
    const DrawerItem('Veículos estacionados', icon: Icons.directions_car, route: Constants.parkedVehiclesRoute),
    const DrawerItem('Editar informações', icon: Icons.edit, route: Constants.editInformationRoute),
  ];
}
