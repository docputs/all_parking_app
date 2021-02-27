import 'package:flutter/material.dart';

import '../app_config.dart';
import '../widgets/drawer_list_tile.dart';
import 'constants.dart';

class DrawerMessages {
  static final _managerItems = [
    const DrawerItem('Início', icon: Icons.home, route: Constants.homeRoute),
    const DrawerItem('Gerenciar funcionários', icon: Icons.person, route: Constants.manageEmployeesRoute),
    const DrawerItem('Gerenciar estacionamentos', icon: Icons.local_parking, route: Constants.manageParkingLotsRoute),
    const DrawerItem('Relatórios', icon: Icons.history, route: Constants.reportsRoute),
    const DrawerItem('Veículos estacionados', icon: Icons.directions_car, route: Constants.parkedVehiclesRoute),
    const DrawerItem('Editar perfil', icon: Icons.edit, route: Constants.editInformationRoute),
  ];

  static final _employeeItems = [
    const DrawerItem('Início', icon: Icons.home, route: Constants.homeRoute),
    const DrawerItem('Veículos estacionados', icon: Icons.directions_car, route: Constants.parkedVehiclesRoute),
    const DrawerItem('Editar perfil', icon: Icons.edit, route: Constants.editInformationRoute),
  ];

  static final items = AppConfig.isManager ? _managerItems : _employeeItems;
}
