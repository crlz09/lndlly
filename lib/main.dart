import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/location_selector_page.dart';
import 'package:lndlly_alpha/pages/main_page.dart';
import 'package:lndlly_alpha/pages/splash_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashPage(), //aqui coloco la principal
      home: SplashPage(), //aqui coloco la principal
      
    );
  }
  
}
