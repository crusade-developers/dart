import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionBlock {
  final String id;
  final String createdDate;
  final String modifiedDate;
  final String balanceKey;
  final String sender;
  final String signature;

  TransactionBlock(
      {required this.id,
      required this.createdDate,
      required this.modifiedDate,
      required this.balanceKey,
      required this.sender,
      required this.signature});

  static TransactionBlock fromJson(Object? json) =>
      _$TransactionBlockFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$TransactionBlockToJson(this);
}

@JsonSerializable()
class TransactionEntry {
  final String id;
  final String fee;
  final int amount;
  final String memo;
  @JsonKey(toJson: _blockToJson)
  final TransactionBlock block;

  TransactionEntry(
      {required this.id,
      required this.fee,
      required this.amount,
      required this.memo,
      required this.block});

  static TransactionEntry fromJson(Object? json) =>
      _$TransactionEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$TransactionEntryToJson(this);

  static Map<String, dynamic> _blockToJson(TransactionBlock block) =>
      block.toJson();
}
