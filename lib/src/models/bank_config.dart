import 'package:json_annotation/json_annotation.dart';

part 'bank_config.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BankConfig {
  @JsonKey(toJson: _primaryValidatorDataToJson)
  final PrimaryValidatorData primaryValidator;
  final String accountNumber;
  final String ipAddress;
  final String nodeIdentifier;
  final int port;
  final String protocol;
  final String version;
  final int defaultTransactionFee;
  final String nodeType;

  const BankConfig(
      {required this.primaryValidator,
      required this.accountNumber,
      required this.ipAddress,
      required this.nodeIdentifier,
      required this.port,
      required this.protocol,
      required this.version,
      required this.defaultTransactionFee,
      required this.nodeType});

  static BankConfig fromJson(Object? json) =>
      _$BankConfigFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$BankConfigToJson(this);

  static Map<String, dynamic> _primaryValidatorDataToJson(Object? instance) =>
      instance is PrimaryValidatorData
          ? instance.toJson()
          : throw UnimplementedError('Unable');
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PrimaryValidatorData {
  final String accountNumber;
  final String ipAddress;
  final String nodeIdentifier;
  final int port;
  final String protocol;
  final String version;
  final int defaultTransactionFee;
  final String rootAccountFile;
  final String rootAccountFileHash;
  final String seedBlockIdentifier;
  final int dailyConfirmationRate;
  final String trust;

  const PrimaryValidatorData(
      {required this.accountNumber,
      required this.ipAddress,
      required this.nodeIdentifier,
      required this.port,
      required this.protocol,
      required this.version,
      required this.defaultTransactionFee,
      required this.rootAccountFile,
      required this.rootAccountFileHash,
      required this.seedBlockIdentifier,
      required this.dailyConfirmationRate,
      required this.trust});

  static PrimaryValidatorData fromJson(Object? json) =>
      _$PrimaryValidatorDataFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$PrimaryValidatorDataToJson(this);
}

class PrimaryValidatorDataConverter
    implements JsonConverter<PrimaryValidatorData, Object> {
  const PrimaryValidatorDataConverter();

  @override
  PrimaryValidatorData fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      return PrimaryValidatorData.fromJson(json);
    }
    throw UnimplementedError('Invalid serialized data.');
  }

  @override
  Map<String, dynamic> toJson(Object object) {
    if (object is PrimaryValidatorData) {
      return object.toJson();
    }
    throw UnimplementedError('Invalid deserialized data.');
  }
}
