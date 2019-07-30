import 'package:flutter/material.dart';
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
                  child: slide1()
                ),
                  Container(
                  color: HexColor("fad08c"),
                 
                ),
                  Container(
                  color: HexColor("0dd5b2"),
                    
                ),
                  Container(
                  color: HexColor("323e48"),
                    
                ),


              ],
),
    );
  }

  Widget slide1() {

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
                child: Text("Back"),

                onPressed: (){},
               ),

               Row(
                 children: <Widget>[
                   Container(
                   width: 15.0,
                   height: 15.0,
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
      )
                 ],
               ),

               FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("Next"),

                onPressed: (){},
               ),



            ],


            ),
          ],
        )

      ],

    );

  }

}