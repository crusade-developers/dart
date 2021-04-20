# thenewboston_sdk

A WIP unofficial Dart SDK to interact with the TNB cryptocurrency server nodes.

## Usage

A simple usage example:

```dart
import 'package:thenewboston_sdk/thenewboston_sdk.dart';

Future<void> main() async {
	const bank = Bank(domain: '54.177.121.3');
	final transactions = await bank.getTransactions();
	print(transactions.results); // List<TransactionEntry>
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

## Contributing

- Always run the Dart formatter through all code that you changed _before_ you commit.

- Limit comment lines to 80 characters. Enable the 80 character line preview in VS Code or whatever editor you use to help you manage this.

## Roadmap

- [x] Wallet (use Ed25519)
  - [x] Creating Pseudo-random Wallet Keys
  - [x] Creating Wallets from Signing (Secret) Key
  - [x] Deriving Keys as `String` Properties on Class
  - [x] Creating Signatures from Data
  - [x] Creating Blocks
- [ ] Bank Node
  - // TODO
- [ ] Base Validator Node (Universal Endpoints)
  - // TODO
- [ ] Confirmation Validator Node
  - // TODO
- [ ] Primary Validator Node
  - // TODO
- [ ] Payment Handler
  - // TODO
- [ ] Data Manager
  - [ ] Bank Integration
  - [ ] Primary Validator Integration
  - [ ] Confirmation Validator Integration
  - [ ] Batch Transactions
