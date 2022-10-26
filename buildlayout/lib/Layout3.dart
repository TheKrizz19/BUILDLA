import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';


class Layout3 extends StatelessWidget {
  List<String>descripciones=['Lata de chongos tradicional \n con 950gr de peso total y \n 500gr de masa drenada', 'Deliciosa cocada horneada tradicional \n excelente sabor', 'Delicioso y jugoso flan de sabor inigualable'];
  List<String>imagenesdes=['images/cocada3.png','images/latachongos.png', 'images/flan2.png'];
          @override
          Widget build(BuildContext context) {
         return Container(child:Stack(children: <Widget>[Scaffold(
            appBar: AppBar(title: Text('Ver Productos')
           ),
           body: ListView(children:<Widget>[
             for(int i=0; i<descripciones.length;i++)
             Container(width:300 ,height: 900,child:Widgets.verdetalles(imagenesdes[i],descripciones[i],context))
           ])
         )],)
          
         );
          
        }
}
        
        