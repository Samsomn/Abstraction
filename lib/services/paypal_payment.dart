import 'payment_gateway.dart';

class PayPalPayment implements PaymentGateway {
  final String emailAddress;

  PayPalPayment(this.emailAddress);

  @override
  void processPayment(double amount) {
    if (amount < 0) {
      print(
        '[PayPal] Sending refund of \$${(-amount).toStringAsFixed(2)} to $emailAddress.',
      );
    } else {
      print(
        '[PayPal] Initiating payment of \$${amount.toStringAsFixed(2)} for account $emailAddress.',
      );
    }
    print('[PayPal] Redirecting to PayPal... Payment complete.');
  }
}
