import 'package:json_annotation/json_annotation.dart';

import 'converters.dart' show TrustConverter;

part 'account.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BankAccountEntry {
  final String id;
  // We might want to change these to dates and implement convertors, but I
  // think that it would be a lot more memory-efficient if the developer just
  // deserializes these on their own when they need them.
  final String createdDate;
  final String modifiedDate;

  /// The account number of an account that added a block to the blockchain.
  final String accountNumber;
  @TrustConverter()
  final double trust;

  const BankAccountEntry(
      {required this.id,
      required this.createdDate,
      required this.modifiedDate,
      required this.accountNumber,
      required this.trust});

  static BankAccountEntry fromJson(Object? json) =>
      _$BankAccountEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$BankAccountEntryToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ValidatorAccountEntry {
  final String id;

  /// The account number of an account that added a block to the blockchain.
  final String accountNumber;
  @TrustConverter()
  final double trust;

  const ValidatorAccountEntry(
      {required this.id, required this.accountNumber, required this.trust});

  static ValidatorAccountEntry fromJson(Object? json) =>
      _$ValidatorAccountEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$ValidatorAccountEntryToJson(this);
}
