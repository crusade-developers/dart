// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmation_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmationBlockEntry _$ConfirmationBlockEntryFromJson(
    Map<String, dynamic> json) {
  return ConfirmationBlockEntry(
    id: json['id'] as String,
    createdDate: json['created_date'] as String,
    modifiedDate: json['modified_date'] as String,
    blockIdentifier: json['block_identifier'] as String,
    block: json['block'] as String,
    validator: json['validator'] as String,
  );
}

Map<String, dynamic> _$ConfirmationBlockEntryToJson(
        ConfirmationBlockEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate,
      'modified_date': instance.modifiedDate,
      'block_identifier': instance.blockIdentifier,
      'block': instance.block,
      'validator': instance.validator,
    };
