import 'package:json_annotation/json_annotation.dart';

part 'clean.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CleanData {
  final String? cleanLastCompleted;
  final String? cleanStatus;
  final String ipAddress;
  final int port;
  final String protocol;

  const CleanData({
    this.cleanLastCompleted,
    this.cleanStatus,
    required this.ipAddress,
    required this.port,
    required this.protocol,
  });

  static CleanData fromJson(Object? json) =>
      _$CleanDataFromJson(json as dynamic);

  Map<String, dynamic> toJson() => _$CleanDataToJson(this);
}
