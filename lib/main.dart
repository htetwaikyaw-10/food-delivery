//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';
import 'package:food_delivery/modules/restaurant.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase.initializeApp(/*options: DefaultFireBaseOption.currentPlatform*/);
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> ThemeProvider()),
  
      ChangeNotifierProvider(create: (context)=> Restaurant()),
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const  LoginOrRegister(
        
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
