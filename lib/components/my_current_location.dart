import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your Location'),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search address...."),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('cancel'),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "8890 Hollywood Blu",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
