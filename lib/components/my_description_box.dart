import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.99",
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery fee",
                style: mySecondaryTextStyle,
              ),
            ],
          ),
          const Column(
            children: [
              Text("15-30 minutes"),
              Text("Delivery time"),
            ],
          )
        ],
      ),
    );
  }
}
