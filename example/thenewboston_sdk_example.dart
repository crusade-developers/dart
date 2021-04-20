import 'package:thenewboston_sdk/thenewboston_sdk.dart';

Future<void> main() async {
  const bank = Bank(domain: '54.177.121.3');
  final transactions = await bank.getTransactions();
  print(transactions.results); // List<TransactionEntry>
}
