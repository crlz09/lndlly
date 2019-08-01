import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/main_page.dart';
import 'package:lndlly_alpha/utils/colors_util.dart';


class ValidationPage extends StatefulWidget {
  ValidationPage({Key key}) : super(key: key);

  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {

  final _formKey = GlobalKey<FormState>();

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
            colors: [new HexColor("360033"), new HexColor("0b8793")], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        alignment: Alignment.center,
        //margin: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 60.0),
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

        Form(
          key: _formKey,
          child: Container(
            width: 150.0,
            //margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: InputDecoration(hintText: "****", counterText: ""),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50.0, color: HexColor("10D4E6")),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
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

