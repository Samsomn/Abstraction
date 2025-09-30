import 'payment_gateway.dart';

class CheckoutService {
  final PaymentGateway _gateway;

  CheckoutService(this._gateway);

  void completeCheckout(double orderTotal) {
    print('--- Starting checkout for \$${orderTotal.toStringAsFixed(2)} ---');
    _gateway.processPayment(orderTotal);
    print('--- Checkout process finished ---\n');
  }

  void issueRefund(double refundAmount) {
    print('--- Starting refund for \$${refundAmount.toStringAsFixed(2)} ---');
    _gateway.processPayment(-refundAmount);
    print('--- Refund process finished ---\n');
  }
}
