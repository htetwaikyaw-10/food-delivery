/*import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/pages/login_page.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  void _confirmLogout(BuildContext context, String paymentMethod) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure want to logout"),
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
                  builder: (context) => LoginPage(onTap: (){}),
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
      body: MyButton(
            text: "Logout",
            onTap: () => _confirmLogout(context, "Logout"),
          ),
    );
  }
}*/