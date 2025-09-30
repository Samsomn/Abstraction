import 'services/checkout_service.dart';
import 'services/credit_card_payment.dart';
import 'services/paypal_payment.dart';

void main() {
  print('Demonstrating Dependency Injection with Gateways');

  print('   Customer is paying with Credit Card    ');
  var creditCardGateway = CreditCardPayment('4111-1111-1111-1111');
  var checkoutWithCard = CheckoutService(creditCardGateway);
  checkoutWithCard.completeCheckout(150.75);
  checkoutWithCard.issueRefund(25.00);

  print('    SCENARIO 2: Customer is paying with PayPal    ');
  var payPalGateway = PayPalPayment('customer@example.com');
  var checkoutWithPayPal = CheckoutService(payPalGateway);
  checkoutWithPayPal.completeCheckout(89.99);
}
