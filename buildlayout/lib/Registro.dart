import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';


class Registro extends StatelessWidget {
  
          @override
          Widget build(BuildContext context) {
         return Container(child:Stack(children: <Widget>[Scaffold(
            appBar: AppBar(title: Text('Registro')
           ),
           body: ListView(children:<Widget>[
          
             Container(width:300 ,height: 900,child:Widgets.cuadroregistro(context))
           ])
         )],)
          
         );
          
        }
}