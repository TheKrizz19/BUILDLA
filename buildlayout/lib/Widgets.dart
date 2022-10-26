import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Layout3.dart';
import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  @override 
  Widget build (BuildContext conetext ){
    return MaterialApp(debugShowCheckedModeBanner: false);
  }

  static BarraBuscar (){

    return Container(
      child: Positioned(      
      child: Container(
    
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 50,
        left: 25,
        child: Container(
        width: 289,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(58),
            topRight: Radius.circular(58),
            bottomLeft: Radius.circular(58),
            bottomRight: Radius.circular(58),
          ),
      color : Color.fromRGBO(217, 217, 217, 1),
  )
      )
      ),const Positioned(
        top: 54,
        left: 317,
        child: Icon(Icons.filter_9)
      ),const Positioned(
        top: 54,
        left: 256,
        child: Icon(Icons.search)
      ),
        ]
      )
    )),
    );

  }

static productos(String titulo, String imagen, BuildContext context){

  
  return Container(
          
      child: Container(
      
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 16,
        child: Container(
      width: 450,
      height: 154,
      decoration: const BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ), boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),)]
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 7,
        child: Container(
        width: 105,
        height: 105,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage(imagen),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
        ]
      )
    )
      ), Positioned(
        top: 19,
        left: 141,
        child: Text(titulo, textAlign: TextAlign.left, style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Manrope',
        fontSize: 20,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 2
      ),)
      ),const Positioned(
        top: 158,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),const Positioned(
        top: 95,
        left: 400,
        child: Icon(Icons.shopping_cart)
      ), Positioned(
        
        top: 77,
        left: 140,
        child: 
       ElevatedButton(
	
    child: Text('Detalles de producto'),
	
      onPressed:(){Navigator.push(context,
    MaterialPageRoute(builder: (context) => Layout3()),
  );


      },
      
    
	
  )),
      ]
      )
    )
  );
}
static verdetalles(String image, String descripcion, BuildContext context){
  return Container(
      child: Container(
      width: 360,
      height: 506,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 50,
        child: Container(
        width: 360,
        height: 414,
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ), Positioned(
        top: 428,
        left: 100,
        child: Text(descripcion, textAlign: TextAlign.left, style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Manrope',
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 1.8571428571428572
      ),)
      ),const Positioned(
        top: 454,
        left: 350,
        child: Icon(Icons.shopping_cart)
      ),
        ]
      )
    )   
  );

}
}


