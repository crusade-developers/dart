// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvalidBlockEntry _$InvalidBlockEntryFromJson(Map<String, dynamic> json) {
  return InvalidBlockEntry(
    id: json['id'] as String,
    createdDate: json['created_date'] as String,
    modifiedDate: json['modified_date'] as String,
    blockIdentifier: json['block_identifier'] as String,
    block: json['block'] as String,
    confirmation_validator: json['confirmation_validator'] as String,
    primary_validator: json['primary_validator'] as String,
  );
}

Map<String, dynamic> _$InvalidBlockEntryToJson(InvalidBlockEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate,
      'modified_date': instance.modifiedDate,
      'block_identifier': instance.blockIdentifier,
      'block': instance.block,
      'confirmation_validator': instance.confirmation_validator,
      'primary_validator': instance.primary_validator,
    };
