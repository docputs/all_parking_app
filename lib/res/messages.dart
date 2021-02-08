import 'package:all_parking/features/parking/core/util/car_color_converter.dart';
import 'package:all_parking/features/parking/core/util/vehicle_type_converter.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Messages {
  //AuthFailure
  static const emailBadlyFormatted = 'E-mail inválido';
  static const emptyField = 'Campo obrigatório';
  static const invalidField = 'Campo inválido';
  static const unknownFailure = 'Erro desconhecido';
  static const serverFailure = 'Erro no servidor';
  static const invalidEmailAndPasswordCombination = 'E-mail e/ou senha inválidos';
  static const invalidEmailAddress = 'E-mail e/ou senhas inválidos';
  static const cancelledByUser = 'Cancelado pelo usuário';
  static const emailAlreadyInUse = 'E-mail já está em uso';
  static const weakPassword = 'Senha muito fraca';
  static const notAuthenticated = 'Usuário não autenticado';
  static const displayNameTooLong = 'Excedeu o limite de caracteres';
  static const passwordsDontMatch = 'Senhas não conferem';
  static const noCurrentParkingLot = 'Nenhum estacionamento foi selecionado';

  //ParkingFailure
  static const invalidParkingLotTitle = 'Nome inválido';
  static const invalidAvailableSpots = 'Número de vagas inválido';
  static const invalidPricePerHour = 'Valor por hora inválido';
  static const invalidAddress = 'Endereço inválido';
  static const invalidCep = 'CEP inválido';
  static const exceededParkingLots = 'Limite de estacionamentos atingido';

  //SignIn
  static const signInScreenTitle = 'Acesse sua conta';
  static const emailFieldLabel = 'E-mail';
  static const signInButton = 'ENTRAR';
  static const passwordFieldLabel = 'Senha';

  //SignUp
  static const signUpScreenTitle = 'Crie sua conta';
  static const signUpFirstNameLabel = 'Nome';
  static const signUpLastNameLabel = 'Sobrenome';
  static const signUpEmailLabel = 'E-mail';
  static const signUpPasswordLabel = 'Senha';
  static const signUpConfirmPasswordLabel = 'Confirme sua senha';
  static const signUpCreateAccountButton = 'CRIAR CONTA';

  //Home
  static const cardsLabel = 'Cartões';
  static String remainingCards(ParkingLot parkingLot) => '${parkingLot.availableSpots - parkingLot.activeParkedVehicles().length} restantes';
  static String usedCards(ParkingLot parkingLot) => '${parkingLot.activeParkedVehicles().length} de ${parkingLot.availableSpots} cartões usados';
  static const checkInVehicleLabel = 'CHECK-IN';
  static const checkOutVehicleLabel = 'CHECK-OUT';
  static const pressMoreToAddParkingLot = 'Toque em + para adicionar';
  static const noParkingLotsFound = 'Nenhum estacionamento encontrado';
  static const noParkedVehicles = 'NENHUM VEÍCULO ESTACIONADO';

  //AddParkingLotScreen
  static const editParkingLotTitle = 'Editar estacionamento';
  static const addParkingLotTitle = 'Adicionar estacionamento';
  static const addParkingLotSubmitButton = 'SALVAR';

  //Check-In
  static String vehicleColorDropdownItem(VehicleColor color) => VehicleColorConverter.translate(color);
  static String vehicleTypeDropdownItem(VehicleType type) => VehicleTypeConverter.translate(type);
  static const checkInVehicleSubmitButton = 'ESCANEAR QR CODE';

  //VehicleDetailsScreen
  static Map<String, Map<String, String>> generateVehicleInfoMap(ParkedVehicle vehicle) {
    return {
      'Informações gerais': {
        'Marca/modelo': vehicle.title,
        'Placa': vehicle.licensePlate,
        'Cor': VehicleColorConverter.translate(vehicle.color),
        'Tipo': VehicleTypeConverter.translate(vehicle.type),
      },
      'Entrada': {
        'Data e hora': parseDateTime(vehicle.checkIn),
        'Tempo decorrido': parseDuration(vehicle.getElapsedTime()),
      },
      'Dados do cliente': {
        'Nome': vehicle.ownerData?.name ?? notProvided,
        'Celular': vehicle.ownerData?.phoneNumber ?? notProvided,
        'CPF': vehicle.ownerData?.cpf ?? notProvided,
      },
    };
  }

  static const notProvided = 'Não fornecido';
  static String parseDateTime(DateTime date) {
    final day = _twoDigits(date.day);
    final month = _twoDigits(date.month);
    final hour = _twoDigits(date.hour);
    final minute = _twoDigits(date.minute);
    final second = _twoDigits(date.second);
    return '$day/$month/${date.year} $hour:$minute:$second';
  }

  static String _twoDigits(int n) => n.toString().padLeft(2, '0');
  static String parseDuration(Duration duration) => '${duration.inHours}h ${duration.inMinutes.remainder(60)}min';

  //CheckOut
  static String formatCurrency(double value) => NumberFormat.currency(locale: 'pt-BR', symbol: 'R\$').format(value);
  static String elapsedTime(ParkedVehicle vehicle) => '${vehicle.getElapsedTime().inHours}h';
  static String pricePerHourLabel(double price) => '${formatCurrency(price)} por hora';
  static Map<IconData, String> getDateAndTime(DateTime dateTime) {
    final date = parseDateTime(dateTime);
    return {
      Icons.access_time: date.split(' ')[1],
      Icons.calendar_today: date.split(' ')[0],
    };
  }
}
