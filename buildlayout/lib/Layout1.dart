import 'package:flutter/material.dart';
import 'Layout1.dart';


class Layout1 extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Container(child:Stack(children: <Widget>[  
              Scaffold(appBar: AppBar(title:Text('Carrito') ,backgroundColor:Color.fromARGB(240, 255, 102, 0)),body: Container( child:ventanacarrito()), )
              ],)
        );
          }
          ventanacarrito(){

              return Container(
      width: 600,
      height: 800,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(

        children: <Widget>[
          Positioned(
        top: 352,
        left: 75,
        child: Text('Tu carrito está vacío', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(199, 189, 189, 1),
        fontFamily: 'Manrope',
        fontSize: 20,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 2.4
      ),)
      ),Positioned(
        top: 0,
        left: -8,
        child: Container(
      width: 800,
      height: 93,
    )
      ),
      Positioned(
        top:600,
        left:370,
        child:Container(
        width:40,
        height:40,
        child: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ))
      )]
      )
    );
          
          }
          
        }
        