import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/sign_up_page.dart';
//import 'package:lndlly_alpha/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(), //aqui coloco la principal
      
    );
  }
}
