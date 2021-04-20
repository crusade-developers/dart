import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode;

import 'models/pagination/paginated_data.dart' show PaginatedData;
import 'models/pagination/account.dart' show ValidatorAccountEntry;
import 'utils/normalize_pagination_opts.dart';

class Validator {
  /// The domain of the given bank server node.
  ///
  /// This is strict in the fact that it cannot have any subpaths or protocols
  /// (http, https, ect.).
  ///
  /// ## Examples
  ///
  /// Here are some good examples for a domain format:
  ///
  /// - IP Address: `"192.168.1.1"`
  /// - Domain: `"google.com"`
  final String domain;

  const Validator({required this.domain});

  Future<PaginatedData<ValidatorAccountEntry>> getAccounts(
      {int? limit, int? offset}) async {
    var queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    var url = Uri.http(domain, '/accounts', queryParams);

    var res = await http.get(url);
    return PaginatedData.fromJson(
        jsonDecode(res.body), ValidatorAccountEntry.fromJson);
  }
}
