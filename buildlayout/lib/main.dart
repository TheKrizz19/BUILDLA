import 'package:buildlayout/Layout3.dart';
import 'package:buildlayout/Layout4.dart';
import 'package:buildlayout/Perfil.dart';
import 'package:buildlayout/Registro.dart';
import 'package:buildlayout/Widgets.dart';
import 'package:flutter/material.dart';
import 'Layout2.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

);

  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Layout4()));

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
                context, MaterialPageRoute (builder:(context)=> Layout4()),
              );
            }

          )
        )
    );
  }
}
