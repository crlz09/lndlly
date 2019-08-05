import 'package:flutter/material.dart';

class HomePageSlider extends StatefulWidget {
  HomePageSlider({Key key}) : super(key: key);
  


  _HomePageSliderState createState() => _HomePageSliderState();
 

}

class _HomePageSliderState extends State<HomePageSlider> with SingleTickerProviderStateMixin {
   AnimationController _animationController;
  Animation _animation;
  int indexpage=0;
   final List<String> opciones = [ "Wash and Fold", 
                            "Dry Cleaning",
                            "Special Garments"
                          ];
  final List<AssetImage> imagenes = [
                          AssetImage("assets/wash-and-fold.jpg"),
                          AssetImage("assets/dry-cleaning.jpg"),
                          AssetImage("assets/special-garments.jpg"),

                          ] ;
  final List<String> _contenido = [ "Pile of dirty clothes? No worries! We take care. Fresh and folded clothes right up to you", 
                            "Get to your special clothes the care they need. They will be shining like new or even better yet!",
                            "Comforters, blankets, towels, sneakers? We've always got your back"
                          ];
 
String desc;
PageController controller = PageController();
var currentPageValue = 0.0;

  @override
  void initState() { 
    desc = _contenido[0];
    _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2)
  );
  
  _animation = Tween( 
    begin: 0.0,
    end: 1.0,).animate(_animationController);
    super.initState();
  
  }


  @override
    Widget build(BuildContext context) {
      _animationController.forward();      
      return Stack(
        children: <Widget>[
      Container(color: Colors.purple,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 70),
      alignment: Alignment.topCenter,
      child: 
      Text("Select an option", 
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white
      ),),
      
      ),
      
    
      Positioned(
      top: 450,
      child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height-250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(180.0),
          )
        ),
        
        child: Container(
          width: 50,
          color: Colors.transparent,
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.only(top: 165),
          height: 50,
          child: FadeTransition(
            opacity: _animation,
            child: textContent.elementAt(indexpage),
          )
      ),
      )
        
      ),

      Positioned(
        top: 150,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            
          
          child: PageView(
            controller: PageController(initialPage: 0, viewportFraction: 0.8,),
              scrollDirection: Axis.horizontal,
            onPageChanged: (index){
     
            setState(() {
              desc=_contenido[indexpage];
              nuevoIndex(index);
            });
            _animationController.reset();
            },
            children: <Widget>[
            washCard(0,opciones[0],imagenes[0]),
            washCard(1,opciones[1],imagenes[1]),
            washCard(2,opciones[2],imagenes[2]),
            
            ],

          ),
        )),

        Positioned(   
          top: 45,
          left: -70,
          child:
        Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(180),
          color: Color.fromRGBO(0, 0, 0, 0.3),
          
        ),
      )
        ),
      

      
    ]);
    }

    Widget washCard(int pageindex, String title, AssetImage image) {
      double wProperty;

    return Card(
    elevation: 15,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    child: Column(
        children: <Widget>[
          
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text("$title", style: TextStyle(
                fontSize: 25,
                color: Colors.purple,
                fontWeight: FontWeight.bold
            ),),
              ),
              
              Container(
                width: wProperty,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                  )
                ),
                ),

            
            ],
          )
          
        ],
    ),

    );

    }
    
    List <Widget> textContent = <Widget>[
      Text("Pile of dirty clothes? No worries! We take care. Fresh and folded clothes right up to you.", style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),),
      Text("Get to your special clothes the care they need. They will be shining like new or even better yet!.", style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),),
      Text("Comforters, blankets, towels, sneakers? We've always got your back. Any garment you need with the care you deserve", style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),)
    ];
  
  void nuevoIndex(int index) {
    indexpage = index;
  }
}