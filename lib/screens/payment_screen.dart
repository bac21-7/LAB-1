import 'package:flutter/material.dart';
import '../models/payment_method.dart';
import '../widgets/payment_option_item.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentBase? selectedPayment;

  final methods = [
    Paypal(),
    GooglePay(),
    ApplePay()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chọn hình thức thanh toán")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Logo
            Center(
              child: selectedPayment == null
                  ? const Icon(Icons.account_balance_wallet,
                      size: 120, color: Colors.grey)
                  : Image.asset(selectedPayment!.logo, height: 120),
            ),

            const SizedBox(height: 30),

            // Danh sách lựa chọn
            ...methods.map((m) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: PaymentOptionItem(
                title: m.name,
                selected: selectedPayment == m,
                onTap: () {
                  setState(() {
                    selectedPayment = m;
                  });
                },
              ),
            )),

            const Spacer(),

            // Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: selectedPayment == null ? null : () {},
                child: const Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
}