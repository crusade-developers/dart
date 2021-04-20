import 'package:json_annotation/json_annotation.dart';

part 'invalid_block.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class InvalidBlockEntry {
  final String id;
  final String createdDate;
  final String modifiedDate;
  final String blockIdentifier;
  final String block;

  /// The id of the confirmation validator that validated the block.
  final String confirmation_validator;

  /// The id of the primary validator that validated the block.
  final String primary_validator;

  const InvalidBlockEntry(
      {required this.id,
      required this.createdDate,
      required this.modifiedDate,
      required this.blockIdentifier,
      required this.block,
      required this.confirmation_validator,
      required this.primary_validator});

  static InvalidBlockEntry fromJson(Object? json) =>
      _$InvalidBlockEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$InvalidBlockEntryToJson(this);
}
