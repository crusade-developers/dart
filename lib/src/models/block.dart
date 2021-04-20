import 'package:json_annotation/json_annotation.dart';

part 'block.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Block {
  final String accountNumber;
  @JsonKey(toJson: _blockMessageToJson)
  final BlockMessage message;
  final String signature;

  const Block(
      {required this.accountNumber,
      required this.message,
      required this.signature});

  factory Block.fromJson(Object? json) => _$BlockFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$BlockToJson(this);

  static Map<String, dynamic> _blockMessageToJson(BlockMessage message) =>
      message.toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BlockMessage {
  final String balanceKey;
  @JsonKey(name: 'txs')
  @TransactionMetaListConverter()
  final List<TransactionMeta> transactions;

  const BlockMessage({required this.balanceKey, required this.transactions});

  static BlockMessage fromJson(Object? json) =>
      _$BlockMessageFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$BlockMessageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMeta {
  final int amount;
  final String recipient;

  const TransactionMeta({required this.amount, required this.recipient});

  static TransactionMeta fromJson(Object? json) =>
      _$TransactionMetaFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$TransactionMetaToJson(this);
}

class TransactionMetaListConverter
    implements JsonConverter<List<TransactionMeta>, Object?> {
  const TransactionMetaListConverter();

  @override
  List<TransactionMeta> fromJson(Object? json) {
    if (json is List<Map<String, dynamic>>) {
      return json.map((item) => TransactionMeta.fromJson(item)).toList();
    }
    throw UnimplementedError('Invalid serialized data.');
  }

  @override
  List<Map<String, dynamic>> toJson(Object? object) {
    if (object is List<TransactionMeta>) {
      return object.map((item) => item.toJson()).toList();
    }
    throw UnimplementedError('Invalid deserialized data.');
  }
}
