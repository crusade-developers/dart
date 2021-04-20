// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionBlock _$TransactionBlockFromJson(Map<String, dynamic> json) {
  return TransactionBlock(
    id: json['id'] as String,
    createdDate: json['created_date'] as String,
    modifiedDate: json['modified_date'] as String,
    balanceKey: json['balance_key'] as String,
    sender: json['sender'] as String,
    signature: json['signature'] as String,
  );
}

Map<String, dynamic> _$TransactionBlockToJson(TransactionBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate,
      'modified_date': instance.modifiedDate,
      'balance_key': instance.balanceKey,
      'sender': instance.sender,
      'signature': instance.signature,
    };

TransactionEntry _$TransactionEntryFromJson(Map<String, dynamic> json) {
  return TransactionEntry(
    id: json['id'] as String,
    fee: json['fee'] as String,
    amount: json['amount'] as int,
    memo: json['memo'] as String,
    block: TransactionBlock.fromJson(json['block'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TransactionEntryToJson(TransactionEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fee': instance.fee,
      'amount': instance.amount,
      'memo': instance.memo,
      'block': TransactionEntry._blockToJson(instance.block),
    };
