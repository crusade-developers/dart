// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccountEntry _$BankAccountEntryFromJson(Map<String, dynamic> json) {
  return BankAccountEntry(
    id: json['id'] as String,
    createdDate: json['created_date'] as String,
    modifiedDate: json['modified_date'] as String,
    accountNumber: json['account_number'] as String,
    trust: const TrustConverter().fromJson(json['trust']),
  );
}

Map<String, dynamic> _$BankAccountEntryToJson(BankAccountEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate,
      'modified_date': instance.modifiedDate,
      'account_number': instance.accountNumber,
      'trust': const TrustConverter().toJson(instance.trust),
    };

ValidatorAccountEntry _$ValidatorAccountEntryFromJson(
    Map<String, dynamic> json) {
  return ValidatorAccountEntry(
    id: json['id'] as String,
    accountNumber: json['account_number'] as String,
    trust: const TrustConverter().fromJson(json['trust']),
  );
}

Map<String, dynamic> _$ValidatorAccountEntryToJson(
        ValidatorAccountEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNumber,
      'trust': const TrustConverter().toJson(instance.trust),
    };
