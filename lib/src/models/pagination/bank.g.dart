// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankEntry _$BankEntryFromJson(Map<String, dynamic> json) {
  return BankEntry(
    accountNumber: json['account_number'] as String,
    ipAddress: json['ip_address'] as String,
    nodeIdentifier: json['node_identifier'] as String,
    defaultTransactionFee: json['default_transaction_fee'] as int,
    port: json['port'] as int,
    protocol: json['protocol'] as String,
    trust: const TrustConverter().fromJson(json['trust']),
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$BankEntryToJson(BankEntry instance) => <String, dynamic>{
      'account_number': instance.accountNumber,
      'ip_address': instance.ipAddress,
      'node_identifier': instance.nodeIdentifier,
      'port': instance.port,
      'protocol': instance.protocol,
      'version': instance.version,
      'default_transaction_fee': instance.defaultTransactionFee,
      'trust': const TrustConverter().toJson(instance.trust),
    };
