import 'package:json_annotation/json_annotation.dart';
import 'converters.dart' show TrustConverter;

part 'bank.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BankEntry {
  final String accountNumber;
  final String ipAddress;
  final String nodeIdentifier;
  final int port;
  final String protocol;
  final String version;
  final int defaultTransactionFee;
  @TrustConverter()
  final double trust;

  const BankEntry(
      {required this.accountNumber,
      required this.ipAddress,
      required this.nodeIdentifier,
      required this.defaultTransactionFee,
      required this.port,
      required this.protocol,
      required this.trust,
      required this.version});

  static BankEntry fromJson(Object? json) =>
      _$BankEntryFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$BankEntryToJson(this);
}
