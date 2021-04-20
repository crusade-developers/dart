import 'package:json_annotation/json_annotation.dart';

part 'confirmation_block.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ConfirmationBlockEntry {
  final String id;
  final String createdDate;
  final String modifiedDate;
  final String blockIdentifier;
  final String block;

  /// The id of the validator that validated the block.
  final String validator;

  const ConfirmationBlockEntry(
      {required this.id,
      required this.createdDate,
      required this.modifiedDate,
      required this.blockIdentifier,
      required this.block,
      required this.validator});

  static ConfirmationBlockEntry fromJson(Object? json) =>
      _$ConfirmationBlockEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$ConfirmationBlockEntryToJson(this);
}
