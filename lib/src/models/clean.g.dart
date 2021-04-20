// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CleanData _$CleanDataFromJson(Map<String, dynamic> json) {
  return CleanData(
    cleanLastCompleted: json['clean_last_completed'] as String?,
    cleanStatus: json['clean_status'] as String?,
    ipAddress: json['ip_address'] as String,
    port: json['port'] as int,
    protocol: json['protocol'] as String,
  );
}

Map<String, dynamic> _$CleanDataToJson(CleanData instance) => <String, dynamic>{
      'clean_last_completed': instance.cleanLastCompleted,
      'clean_status': instance.cleanStatus,
      'ip_address': instance.ipAddress,
      'port': instance.port,
      'protocol': instance.protocol,
    };
