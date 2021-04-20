// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) {
  return Block(
    accountNumber: json['account_number'] as String,
    message: BlockMessage.fromJson(json['message'] as Map<String, dynamic>),
    signature: json['signature'] as String,
  );
}

Map<String, dynamic> _$BlockToJson(Block instance) => <String, dynamic>{
      'account_number': instance.accountNumber,
      'message': Block._blockMessageToJson(instance.message),
      'signature': instance.signature,
    };

BlockMessage _$BlockMessageFromJson(Map<String, dynamic> json) {
  return BlockMessage(
    balanceKey: json['balance_key'] as String,
    transactions: const TransactionMetaListConverter().fromJson(json['txs']),
  );
}

Map<String, dynamic> _$BlockMessageToJson(BlockMessage instance) =>
    <String, dynamic>{
      'balance_key': instance.balanceKey,
      'txs': const TransactionMetaListConverter().toJson(instance.transactions),
    };

TransactionMeta _$TransactionMetaFromJson(Map<String, dynamic> json) {
  return TransactionMeta(
    amount: json['amount'] as int,
    recipient: json['recipient'] as String,
  );
}

Map<String, dynamic> _$TransactionMetaToJson(TransactionMeta instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'recipient': instance.recipient,
    };
