import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_title.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(onTap: () {}),
                ),
                (route) => false, // Remove all previous routes
              );
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTitle(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          MyDrawerTitle(
              text: "S E T T I N G",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              }),
          const Spacer(),
          MyDrawerTitle(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              Navigator.pop(context);
              _confirmLogout(context);
            },
          ),
        ],
      ),
    );
  }
}
