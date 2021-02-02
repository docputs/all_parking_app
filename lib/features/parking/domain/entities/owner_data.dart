import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_data.freezed.dart';

@freezed
abstract class OwnerData with _$OwnerData {
  const factory OwnerData({
    @required String name,
    @required String phoneNumber,
    @required String cpf,
  }) = _OwnerData;

  factory OwnerData.empty() => OwnerData(name: '', phoneNumber: '', cpf: '');
}
