import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/user_val_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  PageController pageController;
  String titulo = "Sign up";
  String opt = "I have an account";

  void initState() { 
    super.initState();
    pageController = PageController(initialPage: 0,viewportFraction: 1);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.navigate_next),  
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ValidationPage()),
            );
          },
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             
              Text('$titulo', textAlign: TextAlign.left,
               style: 
             TextStyle(
               color: Colors.white,
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
               
             ),
             ),
             Expanded(child: Container(),), //hace que se quede fijo abajo el card login

             Container(
               padding: EdgeInsets.only(top: 15.0),
               width: double.infinity,
               height: 350.0,
               child: PageView(
                 physics:new NeverScrollableScrollPhysics(),
                 controller: pageController,
                 scrollDirection: Axis.horizontal,

                 children: <Widget>[

                   Container(child: cardSignUp(), ),
                   Container(child: cardLogIn(), ),


                 ],
                 
               )
             ),

              FlatButton(child: Text('$opt', textAlign: TextAlign.left, style: 
             TextStyle(
               color: Colors.white,
               fontSize: 15.0,
               fontWeight: FontWeight.normal,)),
               onPressed: () {
                
                 setState(() {
                   if(titulo.contains('Sign up')){
                     titulo='Sign in';
                     opt='Create an account';
                     pageController.nextPage(duration: Duration(milliseconds: 150), curve: Curves.bounceIn);
                   } else {
                     titulo='Sign up';
                     opt='I have an account';
                     pageController.previousPage(duration: Duration(milliseconds: 150), curve: Curves.bounceIn);
                   }
                   
                 });
               },
             ),
                
          ],
        )
        )
        ],
      ),
    
    );
  }

  Widget cardSignUp() {
  
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

Widget cardLogIn () {
  
    return SingleChildScrollView(
      child: 
         Card(
      elevation: 10.0,
      margin: EdgeInsets.only(bottom: 50.0, top: 70.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 25.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
              


             TextField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: InputBorder.none,
             hintText: 'Input your phone number',
             labelText: 'Phone',
             prefix: Text('+1'),
             icon: Icon(Icons.phone_android),
             
             )),

             ],
              
            )
            )
          ],
          
      ),)
    );
}


}