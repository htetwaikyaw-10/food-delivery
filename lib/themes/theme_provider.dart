import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mood.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMood;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMood;

  set themeData(ThemeData teamData){
    _themeData = teamData;
    notifyListeners();
  }

  void toggleTheme (){
    if(_themeData == lightMood){
      themeData = darkMood;
    }
    else {
      themeData = lightMood;
    }
  }
}