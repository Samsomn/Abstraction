import 'payment_gateway.dart';

// Concrete Implementation A
class CreditCardPayment implements PaymentGateway {
  final String cardNumber;

  CreditCardPayment(this.cardNumber);

  @override
  void processPayment(double amount) {
    if (amount < 0) {
      print(
        '[CreditCard] Refunding \$${(-amount).toStringAsFixed(2)} to card $cardNumber.',
      );
    } else {
      print(
        '[CreditCard] Charging card $cardNumber: \$${amount.toStringAsFixed(2)}',
      );
    }
    print('[CreditCard] Transaction successful.');
  }
}
