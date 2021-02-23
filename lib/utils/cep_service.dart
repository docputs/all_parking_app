import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../features/parking/domain/entities/parking_lot.dart';

part 'cep_service.freezed.dart';
part 'cep_service.g.dart';

@freezed
abstract class CepResponse with _$CepResponse {
  const factory CepResponse({
    @required String cep,
    @required String logradouro,
    @required String complemento,
    @required String bairro,
    @required String localidade,
    @required String uf,
    @required String ddd,
  }) = _CepResponse;

  factory CepResponse.fromJson(Map<String, dynamic> json) => _$CepResponseFromJson(json);
}

@lazySingleton
class CepService {
  Future<CepResponse> getCep(String input) async {
    try {
      final formattedInput = _formatCepToMakeRequest(input);
      final url = 'https://viacep.com.br/ws/$formattedInput/json/';
      final response = await http.get(url);
      return CepResponse.fromJson(json.decode(response.body));
    } catch (e) {
      print(e);
      return null;
    }
  }

  Address convertFromCepResponse(CepResponse response) {
    return Address(
      street: response.logradouro,
      number: response.complemento,
      cep: response.cep,
      city: response.localidade,
      uf: response.uf,
    );
  }

  String _formatCepToMakeRequest(String rawInput) {
    if (rawInput.contains('-')) return rawInput.split('-').join();
    return rawInput;
  }
}
