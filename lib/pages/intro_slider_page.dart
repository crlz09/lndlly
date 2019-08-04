import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/sign_up_page.dart';
import 'package:lndlly_alpha/utils/colors_util.dart';

class SliderPage extends StatelessWidget {

final controller = PageController(
  initialPage: 0,
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  color: HexColor("8adbdc"),
                  padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: slide1(controller, context)
                ),
                  Container(
                  color: HexColor("fad08c"),
                 padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: slide2(controller)
                ),
                  Container(
                  color: HexColor("0dd5b2"),
                    padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: slide3(controller)
                ),
                  Container(
                  color: HexColor("323e48"),
                    padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: slide4(controller, context)
                ),


              ],
),
    );
  }

  Widget slide1(PageController controller, BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Primer Slider",   
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
          ),
        textAlign: TextAlign.left,
        
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/first.png'),
        ),
      Text("Breve descripcion del slider donde indica\nen dos lineas lo que se quiere expresar", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.normal
          ),
        textAlign: TextAlign.center,
        
        ),
        
       

        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Divider(
          color: Colors.white 
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Skip"),

                onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );},
               ),

               Row(
                 children: <Widget>[
                   Container(
                   width: 15.0,
                   height: 15.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      
    ),
     Container(
       margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
     ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      )
                 ],
               ),

               FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Next"),

                onPressed: (){
                  controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.linear);
                },
               ),



            ],


            ),
          ],
        )

      ],

    );

  }

 Widget slide2(PageController controller) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Segundo Slider", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
          ),
        textAlign: TextAlign.left,
        
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/second.gif'),
        ),
      Text("Breve descripcion del slider donde indica\nen dos lineas lo que se quiere expresar", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.normal
          ),
        textAlign: TextAlign.center,
        
        ),
        
       

        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Divider(
          color: Colors.white 
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Back"),

                onPressed: (){
                    controller.animateToPage(
                    0,
                    duration: Duration(milliseconds: 100) 
                    ,curve: Curves.linear);
                },
               ),

               Row(
                 children: <Widget>[
                   Container(
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
      ),
      
    ),
     Container(
       margin: EdgeInsets.only(left: 5),
                   width: 15.0,
                   height: 15.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
     ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      )
                 ],
               ),

               FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Next"),

                onPressed: (){
                    controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 100) 
                    ,curve: Curves.linear);
                },
               ),



            ],


            ),
          ],
        )

      ],

      

    );
    

  }
  
    Widget slide3(PageController controller) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Tercer Slider",   
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
          ),
        textAlign: TextAlign.left,
        
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/third.gif'),
        ),
      Text("Breve descripcion del slider donde indica\nen dos lineas lo que se quiere expresar", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.normal
          ),
        textAlign: TextAlign.center,
        
        ),
        
       

        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Divider(
          color: Colors.white 
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Back"),

                onPressed: (){
                      controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 100) 
                    ,curve: Curves.linear);
                },
               ),

               Row(
                 children: <Widget>[
                   Container(
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
      ),
      
    ),
     Container(
       margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
     ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 15.0,
                   height: 15.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      )
                 ],
               ),

               FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Next"),

                onPressed: (){
                  controller.animateToPage(
                    3,
                    duration: Duration(milliseconds: 100) 
                    ,curve: Curves.linear);
                },
               ),



            ],


            ),
          ],
        )

      ],

    );

  }

    Widget slide4(PageController controller, BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Ultimo Slider",   
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
          ),
        textAlign: TextAlign.left,
        
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/last.gif'),
        ),
      Text("Breve descripcion del slider donde indica\nen dos lineas lo que se quiere expresar", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.normal
          ),
        textAlign: TextAlign.center,
        
        ),
        
       

        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Divider(
          color: Colors.white 
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Back"),

                onPressed: (){
                      controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 100) 
                    ,curve: Curves.linear);
                },
               ),

               Row(
                 children: <Widget>[
                   Container(
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
      ),
      
    ),
     Container(
       margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
     ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 10.0,
                   height: 10.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      ),
      Container(
            margin: EdgeInsets.only(left: 5),
                   width: 15.0,
                   height: 15.0,
                   decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
      ),
      )
                 ],
               ),

               FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Finish"),

                onPressed: (){Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SignUpPage()));
                },
               ),



            ],


            ),
          ],
        )

      ],

    );

  }

}