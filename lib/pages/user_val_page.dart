import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/main_page.dart';
import 'package:lndlly_alpha/utils/colors_util.dart';

class ValidationPage extends StatefulWidget {
  ValidationPage({Key key}) : super(key: key);

  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.purple,
        onPressed: (){  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );},
        
      ),
      backgroundColor: HexColor("47bdc1"),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 60.0),
        child:
        Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
              Text("Verification Code",   
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.normal
          ),
          textAlign: TextAlign.center,
        
        ),

        Text("Please type the verification code sent to\n +1 855 0505",   
        maxLines: 2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.normal
          
          ),
          textAlign: TextAlign.center,
        
        ),

      

            ],
          
              ),
                        
            )
      
    
    );}
}

