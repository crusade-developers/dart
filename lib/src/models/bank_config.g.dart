// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankConfig _$BankConfigFromJson(Map<String, dynamic> json) {
  return BankConfig(
    primaryValidator: PrimaryValidatorData.fromJson(
        json['primary_validator'] as Map<String, dynamic>),
    accountNumber: json['account_number'] as String,
    ipAddress: json['ip_address'] as String,
    nodeIdentifier: json['node_identifier'] as String,
    port: json['port'] as int,
    protocol: json['protocol'] as String,
    version: json['version'] as String,
    defaultTransactionFee: json['default_transaction_fee'] as int,
    nodeType: json['node_type'] as String,
  );
}

Map<String, dynamic> _$BankConfigToJson(BankConfig instance) =>
    <String, dynamic>{
      'primary_validator':
          BankConfig._primaryValidatorDataToJson(instance.primaryValidator),
      'account_number': instance.accountNumber,
      'ip_address': instance.ipAddress,
      'node_identifier': instance.nodeIdentifier,
      'port': instance.port,
      'protocol': instance.protocol,
      'version': instance.version,
      'default_transaction_fee': instance.defaultTransactionFee,
      'node_type': instance.nodeType,
    };

PrimaryValidatorData _$PrimaryValidatorDataFromJson(Map<String, dynamic> json) {
  return PrimaryValidatorData(
    accountNumber: json['account_number'] as String,
    ipAddress: json['ip_address'] as String,
    nodeIdentifier: json['node_identifier'] as String,
    port: json['port'] as int,
    protocol: json['protocol'] as String,
    version: json['version'] as String,
    defaultTransactionFee: json['default_transaction_fee'] as int,
    rootAccountFile: json['root_account_file'] as String,
    rootAccountFileHash: json['root_account_file_hash'] as String,
    seedBlockIdentifier: json['seed_block_identifier'] as String,
    dailyConfirmationRate: json['daily_confirmation_rate'] as int,
    trust: json['trust'] as String,
  );
}

Map<String, dynamic> _$PrimaryValidatorDataToJson(
        PrimaryValidatorData instance) =>
    <String, dynamic>{
      'account_number': instance.accountNumber,
      'ip_address': instance.ipAddress,
      'node_identifier': instance.nodeIdentifier,
      'port': instance.port,
      'protocol': instance.protocol,
      'version': instance.version,
      'default_transaction_fee': instance.defaultTransactionFee,
      'root_account_file': instance.rootAccountFile,
      'root_account_file_hash': instance.rootAccountFileHash,
      'seed_block_identifier': instance.seedBlockIdentifier,
      'daily_confirmation_rate': instance.dailyConfirmationRate,
      'trust': instance.trust,
    };
