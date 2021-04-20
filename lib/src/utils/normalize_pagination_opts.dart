Map<String, String> normalizePaginationOpts({int? limit, int? offset}) {
  var map = <String, String>{};
  if (limit != null) map['limit'] = limit.toString();
  if (offset != null) map['offset'] = offset.toString();
  return map;
}
