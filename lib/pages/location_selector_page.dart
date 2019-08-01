import 'package:flutter/material.dart';


class LocationPage extends StatefulWidget {
  LocationPage({Key key}) : super(key: key);

  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Stack(
         children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60.0),
                height: 300,
                width: double.infinity,
                decoration: new BoxDecoration(
                  
                image: new DecorationImage(image: new AssetImage(
                  "assets/location.gif"), fit: BoxFit.fitWidth,),
              ),
        ),
            ],
          ),
        new Container(
        padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             
              
             Expanded(child: Container(),), 
             
             Container(child: locCard())//hace que se quede fijo abajo el card login
          ]
       ),


        
         )]  ));
  }


  Widget locCard(){
  return SingleChildScrollView(
    
      child: 
         Card(
      elevation: 10.0,
      margin: EdgeInsets.only(bottom: 50.0, top: 70.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        height: 300,
        width: double.infinity,
        child: Column(
              
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 25.0, bottom: 15.0),
                child: Column(
                  children: <Widget>[
                    
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text("Select your location",
                      style: TextStyle(
                        fontSize: 20,
                        
                      )),
                    ),


               TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: InputBorder.none,
               hintText: 'Input your location',
               labelText: 'Location',
               icon: Icon(Icons.location_on),
               
               )),
                

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: FlatButton(color: Colors.transparent,
                 textColor: Colors.black,
                 child: Column(
                   children: <Widget>[
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: AlignmentDirectional.center,
                        child:    Image.asset("assets/maps-icon.png"),
                      ),
                    ),
                     Text("Select from map",
                     style: TextStyle(
                          fontSize: 15)),
                   ],
                 ),),
               )
               

               ],
                
              )
              )
            ],
            
        ),
      ),)
    );
}
}