import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';


class Perfil extends StatelessWidget {
  
          @override
          Widget build(BuildContext context) {
         return Container(child:Stack(children: <Widget>[Scaffold(
            appBar: AppBar(title: Text('Perfil del Usuario'), backgroundColor:Color.fromARGB(240, 255, 102, 0),
           ),
           body: ListView(children:<Widget>[
          
             Container(width:300 ,height: 900,child:Widgets.perfil(context))
           ])
         )],)
          
         );
          
        }
}