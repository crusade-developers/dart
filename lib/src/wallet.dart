import 'package:cryptography/cryptography.dart'
    show Ed25519, KeyPair, SimplePublicKey, SimpleKeyPair;
import 'package:hex/hex.dart' show HEX;
import 'dart:convert' show jsonEncode, utf8;

import 'models/block.dart';

class Wallet {
  final String signingKey;
  final String accountNumber;
  final KeyPair _pair;

  static final _ed25519 = Ed25519();

  const Wallet(
      {required this.signingKey,
      required this.accountNumber,
      required KeyPair pair})
      : _pair = pair;

  /// Note: only supports UTF-8.
  Future<String> createSignature(Object data) async {
    final encoded = data is String ? data : jsonEncode(data);
    final signature = await _ed25519.sign(utf8.encode(encoded), keyPair: _pair);
    return HEX.encode(signature.bytes);
  }

  Future<Block> createBlock(BlockMessage message) async {
    final signature = await createSignature(message);
    return Block(
        accountNumber: accountNumber, message: message, signature: signature);
  }

  static Future<Wallet> random() async {
    final pair = await _ed25519.newKeyPair();
    final keys = await _getKeys(pair);
    return Wallet(pair: pair, signingKey: keys[0], accountNumber: keys[1]);
  }

  static Future<Wallet> fromSigningKey(String signingKey) async {
    final pair = await _ed25519.newKeyPairFromSeed(HEX.decode(signingKey));
    final keys = await _getKeys(pair);
    return Wallet(pair: pair, signingKey: keys[0], accountNumber: keys[1]);
  }

  static Future<List<String>> _getKeys(SimpleKeyPair keypair) async {
    final keys = await Future.wait(
        [keypair.extractPrivateKeyBytes(), keypair.extractPublicKey()]);
    final signingKey = HEX.encode(keys[0] as List<int>);
    final accountNumber = HEX.encode((keys[1] as SimplePublicKey).bytes);
    return [signingKey, accountNumber];
  }
}
