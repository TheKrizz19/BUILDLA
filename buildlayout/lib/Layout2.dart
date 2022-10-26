import 'package:buildlayout/Layout3.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';
import 'Layout1.dart';


class Layout2 extends StatelessWidget {
  List<String> titulos=['Cocada individual','Lata chongos', 'Flan individual'];
  List<String> imagenes=['images/cocada3.png','images/latachongos.png', 'images/flan2.png'];
          @override
          Widget build(BuildContext context) {
         return Container(child: Stack(children:<Widget>[Scaffold(
           appBar: AppBar(title:Text('Inicio'),
           actions: <Widget>[
             IconButton(onPressed:(){
               Navigator.push(context,
    MaterialPageRoute(builder: (context) => Layout1()));
    }, icon: const Icon(Icons.shopping_cart)),
             IconButton(onPressed:(){}, icon: const Icon(Icons.person)),
           ],
           
         
         ),
          body:ListView(children: <Widget>[
            Container(width: 338,height: 200,child:Widgets.BarraBuscar()),
            for(int i=0;i<titulos.length;i++)
            Container(width: 379, height: 194, child: Widgets.productos(titulos[i],imagenes[i], context))
          ],)
          ) ]
         )
         
         );
        }
}
        