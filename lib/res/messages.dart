import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../features/parking/core/util/vehicle_color_converter.dart';
import '../features/parking/core/util/vehicle_type_converter.dart';
import '../features/parking/domain/entities/parked_vehicle.dart';
import '../features/parking/domain/entities/parking_lot.dart';
import '../features/parking/presentation/reports/view_models/reports_view_model.dart';
import '../utils/format_utils.dart';
import '../utils/pure_date.dart';

class Messages {
  const Messages._();

  //General
  static String userType(UserType type) => type == UserType.manager ? 'Administrador' : 'Funcionário';

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
  static const noCurrentParkingLot = 'Nenhum estacionamento selecionado';

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

  //HomeScreen
  static const defaultAppBarTitle = 'All Parking';
  static const cardsLabel = 'Cartões';
  static const parkedVehiclesLabel = 'Veículos estacionados';
  static String remainingCards(ParkingLot parkingLot) => '${parkingLot.availableSpots - parkingLot.activeParkedVehicles().size} restantes';
  static String usedCards(ParkingLot parkingLot) =>
      '${parkingLot.activeParkedVehicles().size} de ${parkingLot.availableSpots} cartões usados';
  static const checkInVehicleLabel = 'CHECK-IN';
  static const checkOutVehicleLabel = 'CHECK-OUT';
  static const pressMoreToAddParkingLot = 'Toque em + para adicionar';
  static const noParkingLotsFound = 'Nenhum estacionamento encontrado';
  static const noParkedVehicles = 'NENHUM VEÍCULO ESTACIONADO';
  static String snackBarSaveSuccess(String title) => '$title salvo com sucesso!';
  static const logoutLabel = 'Sair da conta';
  static const moreButtonLabel = 'VER MAIS';

  //AddParkingLotScreen
  static const editParkingLotTitle = 'Editar estacionamento';
  static const addParkingLotTitle = 'Adicionar estacionamento';
  static const addParkingLotSubmitButton = 'SALVAR';
  static const addParkingLotGeneralData = 'Dados gerais';
  static const addParkingLotAddress = 'Endereço do local';
  static const addParkingLotTitleLabel = 'Nome do estacionamento';
  static const addParkingLotCepLabel = 'CEP';
  static const addParkingLotStreetLabel = 'Logradouro';
  static const addParkingLotCityLabel = 'Cidade';
  static const addParkingLotUfLabel = 'Estado';
  static const addParkingLotSpotsLabel = 'Número de vagas';
  static const addParkingLotPricePerHourLabel = 'Valor por hora';

  //CheckInScreen
  static const checkInScreenTiele = 'Entrada de veículo';
  static const checkInVehicleDataLabel = 'Dados do veículo';
  static const checkInCustomerDataLabel = 'Dados do cliente (opcional)';
  static const checkInConfirmDialogTitle = 'Confirme os dados do veículo';
  static const checkInConfirmDialogRightButton = 'CONTINUAR';
  static const checkInConfirmDialogLeftButton = 'ALTERAR';
  static const checkInOwnerNameLabel = 'Nome';
  static const checkInOwnerPhoneLabel = 'Celular';
  static const checkInOwnerCpfLabel = 'CPF';
  static const checkInVehicleBrandLabel = 'Marca/modelo';
  static const checkInVehicleLicensePlateLabel = 'Placa';
  static const checkInVehicleObservationsLabel = 'Observações';
  static String checkInConfirmDialogContent(ParkedVehicle vehicle) =>
      '${vehicle.title}, ${vehicle.licensePlate}, ${VehicleColorConverter.translate(vehicle.color)}';
  static String vehicleColorDropdownItem(VehicleColor color) => VehicleColorConverter.translate(color);
  static String vehicleTypeDropdownItem(VehicleType type) => VehicleTypeConverter.translate(type);
  static const checkInVehicleSubmitButton = 'ESCANEAR QR CODE';

  //ParkedVehiclesScreen
  static const parkedVehiclesScreenTitle = 'Veículos estacionados';
  static const noCurrentParkingLotText = 'Nenhum estacionamento selecionado';
  static const parkedVehiclesAllVehiclesLabel = 'Todos os veículos';

  //VehicleDetailsScreen
  static const vehicleDetailsScreenTitle = 'Detalhes do veículo';
  static Map<String, Map<String, String>> generateVehicleInfoMap(ParkedVehicle vehicle) {
    String checkCustomerInfo(String value) {
      if (value == null || value.isEmpty) return notProvided;
      return value;
    }

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
        'Nome': checkCustomerInfo(vehicle.ownerData?.name),
        'Celular': checkCustomerInfo(vehicle.ownerData?.phoneNumber),
        'CPF': checkCustomerInfo(vehicle.ownerData?.cpf),
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

  //CheckOutScreen
  static const checkOutScreenTitle = 'Saída de veículo';
  static const checkOutSummaryHeader = 'Resumo';
  static const checkOutObservationsHeader = 'Observações';
  static const checkOutMoreDetailsHeader = 'Mais detalhes';
  static const checkOutSubmitButton = 'CONFIRMAR SAÍDA';
  static const checkOutNoObservations = 'Nenhuma observação';
  static const checkOutChangePricePerHourButton = 'ALTERAR';
  static const checkOutNewPriceDialogTitle = 'Alterar valor por hora';
  static const checkOutNewPriceDialogDescription = 'Digite o valor por hora apenas para este veículo';
  static const checkOutNewPriceDialogRightButton = 'CONFIRMAR';
  static const checkOutNewPriceDialogLeftButton = 'CANCELAR';
  static String elapsedTime(ParkedVehicle vehicle) => '${vehicle.getElapsedTime().inHours}h';
  static String pricePerHourLabel(double price) => '${FormatUtils.formatCurrency(price)} por hora';
  static Map<IconData, String> getDateAndTime(DateTime dateTime) {
    final date = parseDateTime(dateTime);
    return {
      Icons.access_time: date.split(' ')[1],
      Icons.calendar_today: date.split(' ')[0],
    };
  }

  //ReportsScreen
  static const reportsScreenTitle = 'Relatórios';
  static const reportsParkedVehiclesHeader = 'Veículos estacionados';
  static const reportsNoAvailableData = 'Sem dados para exibir';
  static String reportsInfoTileTrailingText(dynamic value) => '$value';
  static String selectedDateLabel(DateTime dateTime) {
    final formattedDate = DateFormat.MMMMd().format(dateTime);
    return PureDate.fromDateTime(dateTime).isToday ? 'Hoje, $formattedDate' : formattedDate;
  }

  static Map<String, Map<String, dynamic>> generateReportsInfo(ReportsViewModel viewModel) {
    final todaysParkedVehicles = viewModel.parkedVehicles.fromToday();
    final lastWeekParkedVehicles = viewModel.parkedVehicles.fromLastWeek();
    return {
      selectedDateLabel(DateTime.now()): {
        'Veículos estacionados': todaysParkedVehicles.size,
        'Total ganho': FormatUtils.formatCurrency(viewModel.calculateEarnings(todaysParkedVehicles)),
      },
      'Última semana': {
        'Veículos estacionados': lastWeekParkedVehicles.size,
        'Total ganho': FormatUtils.formatCurrency(viewModel.calculateEarnings(lastWeekParkedVehicles)),
      },
    };
  }

  //ManageParkingLots
  static const manageParkingLotsScreenTitle = 'Gerenciar estacionamentos';
  static const manageParkingLotsDeleteDialogTitle = 'Tem certeza?';
  static const manageParkingLotsDeleteDialogRightButton = 'REMOVER';
  static const manageParkingLotsDeleteDialogLeftButton = 'VOLTAR';
  static const manageParkingLotsYourParkingLotsLabel = 'Seus estacionamentos';
  static String manageParkingLotsDeleteDialogContent(String title) => 'Deseja remover $title da sua lista de estacionamentos?';

  //SelectParkingLotScreen
  static const selectParkingLotScreenTitle = 'Selecionar estacionamento';
  static const selectParkingLotYourParkingLotsHeader = 'Seus estacionamentos';
  static String selectParkingLotInfoTileSubtitle(Address address) => '${address.street} | ${address.cep}';
}
