import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.navigate_next),  
          onPressed: (){},
 ),
        


      body: Stack(
        
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage(
              "assets/sign-up.jpg"), fit: BoxFit.cover,),
          ),
        ),
        new Container(
        padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             
              Text("Sign up", textAlign: TextAlign.left, style: 
             TextStyle(
               color: Colors.white,
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
               
             ),
             ),
              Expanded(child: Container(),), //hace que se quede fijo abajo el card login

              cardLogin(),
            

              Text("I have an account", textAlign: TextAlign.left, style: 
             TextStyle(
               color: Colors.white,
               fontSize: 15.0,
               fontWeight: FontWeight.normal,)),
             
          ],
        )
        )
        ],
      ),
    
    );
  }

  Widget cardLogin() {
  
    return SingleChildScrollView(
      child: 
         Card(
      elevation: 10.0,
      margin: EdgeInsets.only(bottom: 25.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 25.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
              
              TextField(
             textCapitalization: TextCapitalization.sentences,
             decoration: InputDecoration(
               border: InputBorder.none,
             hintText: 'Input your first and last name',
             labelText: 'Name',
             icon: Icon(Icons.person),
            )), 
             Divider(),

            TextField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: InputBorder.none,
             hintText: 'Input your phone number',
             labelText: 'Phone',
             icon: Icon(Icons.phone_android),
             
             )),
             Divider(),

             TextField(
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               border: InputBorder.none,
             hintText: 'Input your email',
             labelText: 'Email',
             icon: Icon(Icons.email),
             ))
             
             
             
             
             ],
              
             

            )
            )
            
          ],
          
    
      ),)
    );
    


  
  }
}