import 'services/checkout_service.dart';
import 'services/credit_card_payment.dart';

void main() {
  print('Demonstrating Dependency Injection with Gateways');

  print('   Customer is paying with Credit Card    ');
  var creditCardGateway = CreditCardPayment('4111-1111-1111-1111');
  var checkoutWithCard = CheckoutService(creditCardGateway);
  checkoutWithCard.completeCheckout(150.75);
  checkoutWithCard.issueRefund(25.00);
}
