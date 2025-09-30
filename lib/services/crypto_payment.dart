import 'payment_gateway.dart';

class CryptoPayment implements PaymentGateway {
  final String walletAddress;

  CryptoPayment(this.walletAddress);

  @override
  void processPayment(double amount) {
    if (amount < 0) {
      print(
        '[Crypto] Manual refund required for \$${(-amount).toStringAsFixed(2)} to $walletAddress.',
      );
    } else {
      print(
        '[Crypto] Broadcasting transaction of \$${amount.toStringAsFixed(2)} to wallet $walletAddress.',
      );
    }
    print('[Crypto] Transaction confirmed on the blockchain.');
  }
}
