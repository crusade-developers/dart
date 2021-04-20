import 'package:thenewboston_sdk/thenewboston_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('Wallet', () {
    void assertWallet(Wallet wallet) {
      expect(wallet.accountNumber.length, 64);
      expect(wallet.signingKey.length, 64);
    }

    test('Valid Key Lengths', () async {
      final wallet = await Wallet.random();
      assertWallet(wallet);
    });

    test('Creating a Random Wallet', () async {
      final wallet = await Wallet.random();
      assertWallet(wallet);
    });

    test('Creating Wallet from Signing Key', () async {
      final wallet = await Wallet.random();
      final walletCopy = await Wallet.fromSigningKey(wallet.signingKey);
      assertWallet(wallet);
      assertWallet(walletCopy);
      expect(wallet.signingKey, walletCopy.signingKey);
    });
  });
}
