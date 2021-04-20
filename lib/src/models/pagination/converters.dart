import 'package:json_annotation/json_annotation.dart' show JsonConverter;

class TrustConverter implements JsonConverter<double, Object?> {
  const TrustConverter();

  @override
  double fromJson(Object? json) {
    if (json is String) {
      return double.parse(json);
    }
    throw UnimplementedError('Invalid serialized data.');
  }

  @override
  String toJson(Object? object) {
    if (object is double) {
      return object.toStringAsFixed(1);
    }
    throw UnimplementedError('Invalid deserialized data.');
  }
}
