
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi/onboarding_screen.dart'; 
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isFirstTime = await isFirstTimeUser();
  
  runApp(BMICalculatorApp(isFirstTime: isFirstTime));
}

class BMICalculatorApp extends StatelessWidget {
  final bool isFirstTime;
  
  BMICalculatorApp({required this.isFirstTime}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  MyHome() 
    ); 
  }
}

Future<bool> isFirstTimeUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool('isFirstTime') ?? true; 
  return isFirstTime;
}

void markFirstTimeUserComplete() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isFirstTime', false);
}
