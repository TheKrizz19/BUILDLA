import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';


class Layout4 extends StatelessWidget {
  
          @override
          Widget build(BuildContext context) {
         return Container(child:Stack(children: <Widget>[Scaffold(
            appBar: AppBar(title: Text('Inicio de Sesión')
           ),
           body: ListView(children:<Widget>[
          
             Container(width:300 ,height: 900,child:Widgets.formularioinicio(context))
           ])
         )],)
          
         );
          
        }
}
        
        