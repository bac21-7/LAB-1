// 1. Abstraction
abstract class PaymentBase {
  String name;
  String logo;

  PaymentBase(this.name, this.logo);

  // 3. Polymorphism
  String pay();
}

// 2. Inheritance + 4. Encapsulation
class Paypal extends PaymentBase {
  Paypal() : super("PayPal", "assets/paypal.png");

  @override
  String pay() => "Thanh toán bằng PayPal";
}

class GooglePay extends PaymentBase {
  GooglePay() : super("Google Pay", "assets/gpay.png");

  @override
  String pay() => "Thanh toán bằng Google Pay";
}

class ApplePay extends PaymentBase {
  ApplePay() : super("Apple Pay", "assets/apple.png");

  @override
  String pay() => "Thanh toán bằng Apple Pay";
}