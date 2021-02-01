import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';

class Messages {
  //AuthFailure
  static const emailBadlyFormatted = 'E-mail inválido';
  static const emptyField = 'Campo obrigatório';
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

  static const emailFieldLabel = 'E-mail';
  static const passwordFieldLabel = 'Senha';

  //SignIn
  static const signInScreenTitle = 'Acesse sua conta';
  static const signInButton = 'ENTRAR';

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
  static String remainingCards(ParkingLot parkingLot) => '${parkingLot.availableSpots - parkingLot.parkedVehicles.length} restantes';
  static String usedCards(ParkingLot parkingLot) => '${parkingLot.parkedVehicles.length} de ${parkingLot.availableSpots} cartões usados';

  //AddParkingLotScreen
  static const editParkingLotTitle = 'Editar estacionamento';
  static const addParkingLotTitle = 'Adicionar estacionamento';
  static const addParkingLotSubmitButton = 'SALVAR';
}
