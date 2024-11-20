import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/pages/delivery_progress_page.dart';

class KwpaymentPage extends StatelessWidget {
  const KwpaymentPage({super.key});

  void _confirmPayment(BuildContext context, String paymentMethod) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Payment"),
        content: Text("Are you sure want to pay with $paymentMethod?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryProgressPage(),
                ),
              );
            },
            child: const Text("Yes"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          const Spacer(),
          const Text(
            "Select a payment method",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            text: "Pay with KBZ Pay",
            onTap: () => _confirmPayment(context, "KBZ Pay"),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            text: "Pay with Wave Pay",
            onTap: () => _confirmPayment(context, "Wave Pay"),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            text: "Pay with AYA Pay",
            onTap: () => _confirmPayment(context, "Wave Pay"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
