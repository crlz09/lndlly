import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/intro_slider_page.dart';

class SplashPage extends StatefulWidget {

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  void initState (){
    super.initState();
   new Future.delayed(const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SliderPage()),
            ));
  }
  
  @override

  Widget build(BuildContext context) {
    return Container(
       child: splashStart(),
    );
  }

  
  Widget splashStart() {
 return Image.asset("assets/splashimg.jpg",
         fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center);

    
}
}