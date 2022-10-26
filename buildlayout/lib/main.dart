import 'package:buildlayout/Layout3.dart';
import 'package:flutter/material.dart';
import 'Layout2.dart';


void main() {
  
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Layout2()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('a')
        ),
        body:Center(
          child:ElevatedButton(
            child:Text('Ir al Catalogo'),
            onPressed:(){
              Navigator.push(
                context, MaterialPageRoute (builder:(context)=> Layout2()),
              );
            }

          )
        )
    );
  }
}
