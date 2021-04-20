import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode, jsonEncode;

import 'models/block.dart' show Block;
import 'models/bank_config.dart' show BankConfig;
import 'models/clean.dart' show CleanData;

import 'models/pagination/confirmation_block.dart' show ConfirmationBlockEntry;
import 'models/pagination/transaction.dart' show TransactionEntry;
import 'models/pagination/account.dart' show BankAccountEntry;
import 'models/pagination/paginated_data.dart' show PaginatedData;
import 'models/pagination/bank.dart' show BankEntry;
import 'models/pagination/invalid_block.dart' show InvalidBlockEntry;

import 'utils/normalize_pagination_opts.dart' show normalizePaginationOpts;

class Bank {
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

  const Bank({required this.domain});

  Future<PaginatedData<TransactionEntry>> getTransactions(
      {int? limit, int? offset, String? accountNumber}) async {
    final queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    if (accountNumber != null) {
      queryParams['account_number'] = accountNumber;
    }
    final url = Uri.http(domain, '/bank_transactions', queryParams);

    final res = await http.get(url);
    return PaginatedData.fromJson(
        jsonDecode(res.body), TransactionEntry.fromJson);
  }

  Future<PaginatedData<BankAccountEntry>> getAccounts(
      {int? limit, int? offset}) async {
    var queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    var url = Uri.http(domain, '/accounts', queryParams);

    var res = await http.get(url);
    return PaginatedData.fromJson(
        jsonDecode(res.body), BankAccountEntry.fromJson);
  }

  Future<PaginatedData<BankEntry>> getBanks({int? limit, int? offset}) async {
    var queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    var url = Uri.http(domain, '/banks', queryParams);

    var res = await http.get(url);
    return PaginatedData.fromJson(jsonDecode(res.body), BankEntry.fromJson);
  }

  Future<PaginatedData<ConfirmationBlockEntry>> getConfirmationBlocks(
      {int? limit, int? offset}) async {
    var queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    var url = Uri.http(domain, '/confirmation_blocks', queryParams);

    var res = await http.get(url);
    return PaginatedData.fromJson(
        jsonDecode(res.body), ConfirmationBlockEntry.fromJson);
  }

  Future<PaginatedData<InvalidBlockEntry>> getInvalidBlocks(
      {int? limit, int? offset}) async {
    var queryParams = normalizePaginationOpts(limit: limit, offset: offset);
    var url = Uri.http(domain, '/invalid_blocks', queryParams);

    var res = await http.get(url);
    return PaginatedData.fromJson(
        jsonDecode(res.body), InvalidBlockEntry.fromJson);
  }

  Future<CleanData> getCleanData() async {
    var url = Uri.http(domain, '/clean');
    var res = await http.get(url);
    return CleanData.fromJson(jsonDecode(res.body));
  }

  Future<BankConfig> getConfig() async {
    var url = Uri.http(domain, '/config');
    var res = await http.get(url);
    return BankConfig.fromJson(jsonDecode(res.body));
  }

  Future<String> addBlock(Block block) async {
    var url = Uri.http(domain, '/blocks');
    var res = await http.post(url,
        body: jsonEncode(block.toJson()),
        headers: {'content-type': 'application/json'});
    return res.body;
  }
}
