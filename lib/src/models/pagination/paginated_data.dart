import 'package:json_annotation/json_annotation.dart';

import 'account.dart' show BankAccountEntry;
import 'transaction.dart' show TransactionEntry;
import 'bank.dart' show BankEntry;
import 'confirmation_block.dart' show ConfirmationBlockEntry;
import 'invalid_block.dart' show InvalidBlockEntry;

part 'paginated_data.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedData<T> {
  final int count;
  final String? next;
  final String? previous;
  final List<T> results;

  const PaginatedData(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});

  factory PaginatedData.fromJson(Map<String, dynamic> json,
          T Function(Map<String, dynamic> json) fromJsonT) =>
      _$PaginatedDataFromJson(json, fromJsonT as dynamic);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$PaginatedDataToJson(this, toJsonT);
}
