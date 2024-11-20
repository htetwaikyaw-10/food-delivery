import 'package:flutter/material.dart';
import 'package:food_delivery/modules/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank for your order!"),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) => Text(
                  restaurant.displayCartReceipt(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Estimated delivery time is 4:10PM"),
          ],
        ),
      ),
    );
  }
}
