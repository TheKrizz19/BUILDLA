import 'package:buildlayout/Layout1.dart';
import 'package:buildlayout/Layout2.dart';
import 'package:buildlayout/Layout3.dart';
import 'package:buildlayout/Recuperarcontrasenia.dart';
import 'package:buildlayout/Registro.dart';
import 'package:buildlayout/services/firebase_crud.dart';
import 'package:flutter/material.dart';


class Widgets extends StatelessWidget {
  final correo=TextEditingController();
  final con=TextEditingController();
  final con2=TextEditingController();
  final nom=TextEditingController();
  final ap=TextEditingController(); 
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
static formularioinicio(BuildContext context){
return Container(
        width: 800,
        height: 700,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 80,
              child: Text(
                'Iniciar sesión',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 145, 144, 144),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          Positioned(
              top: 300,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Correo electronico',
                      hintText: 'Ingresa tu correo electronico',
                    ),
                    onSaved: (String? correo) {
                      correo = correo.toString();
                    },
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
          Positioned(
              top: 350,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Ingresa tu contraseña',
                    ),
                    onSaved: (String? con) {
                      con = con.toString();
                    },
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),

          Positioned(
              top: 420,
              left: 110,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recuperarcontrasenia()),
                  );
                },
                child: const Text(
                  "Olvidaste tu contraseña?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  selectionColor: Colors.blue,
                ),
              )),
              const  Positioned(
              top: 370, 
              left: 260, 
              child: Icon(Icons.remove_red_eye)),
          Positioned(
              top: 500,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Layout2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(84, 113, 214, 1)),
                child: const Text(
                  'Iniciar Sesion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Amiko',
                      fontSize: 16,
                      letterSpacing:
                          0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                      
                ),
              ),
              ),
               Positioned(
              top: 500,
              left: 270,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registro()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(84, 113, 214, 1)),
                child: const Text(
                  'Crear Cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Amiko',
                      fontSize: 16,
                      letterSpacing:
                          0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                      
                ),
              ),
              )
        
        ]));
  }
   cuadroregistro (BuildContext context){
          
return Container(
        width: 800,
        height: 700,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 80,
              child: Text(
                'Crear Cuenta',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 145, 144, 144),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          Positioned(
              top: 300,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: nom,
                    decoration: const InputDecoration(
                      labelText: 'Nombres',
                      hintText: 'Ingresa tu nombre',
                    ),
                   
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
          Positioned(
              top: 350,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller:ap,
                    decoration: const InputDecoration(
                      labelText: 'Apellidos',
                      hintText: 'Ingresa tus apellidos',
                    ),
                   
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
                   Positioned(
              top: 400,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: correo,
                    decoration: const InputDecoration(
                      labelText: 'Correo Electrónico',
                      hintText: 'Introduzca su correo electrónico',
                    ),
                   
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
                  Positioned(
              top: 450,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: con,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Ingrese una contraseña',
                    ),
                   
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
                  Positioned(
              top: 500,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    controller: con2,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Confirme nuevamente su contraseña',
                    ),
                   
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
          Positioned(
              top: 570,
              left: 120,
              child: ElevatedButton(
                onPressed: () async {
                  if(nom.text.isNotEmpty&&ap.text.isNotEmpty&&correo.text.isNotEmpty&&con.text.isNotEmpty&&con2.text.isNotEmpty){
                    if(con.text.toString()==con2.text.toString()){
                      var response = await FirebaseCrud.addUsuario(Apellidos: ap.text, Contrasenia: con.text, CorreoElectronico: correo.text, Nombre: nom.text);
                      if(response.code != 200){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            content:
                            Text(response.message.toString()),
                          );
                        });
                      }else{
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            content: Text(response.message.toString()),
                          );
                        });
                        Future.delayed(
                          const Duration (seconds: 3),
                       () =>   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Layout2()),
                  ),
                        );
                        
                      }
                    }else{
                      showDialog(context: context, builder: (context){
                        return const AlertDialog(content: Text("Las contraseñas no son iguales"),
                        );
                      }
                      );

                    }

                  }else{
                    showDialog(context: context, builder: (context){
                      return const AlertDialog(content: Text("Campos vacíos"),
                      );
                    });
                  }
                 
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 252, 106, 8)),
                child: const Text(
                  'Crear Cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Amiko',
                      fontSize: 16,
                      letterSpacing:
                          0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ))
        ]));
  }
  
  static perfil(BuildContext context){
    return Container(
      child: Column (
        children: [
        Padding (
          padding: const EdgeInsets.only(left: 20,right: 20,top: 35),
          child: Row(
            children: const [
              Icon(Icons.person,
              size:70,
              ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Ventana Usuario',
              style:TextStyle(
              fontFamily: 'Berlin Sans FB',
              ),
                
              ),
              ],
          ),
      ),
       SizedBox(
         height: 600,
        
      
      
      child:Stack(
        children: <Widget>[
          Positioned(
        top: 50,
        left: 100,
        child: Container(
        width: 263,
        height: 460,
        decoration: const BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(47),
            topRight: Radius.circular(47),
            bottomLeft: Radius.circular(47),
            bottomRight: Radius.circular(47),
          ),
      color : Color.fromRGBO(255, 69, 0, 0.8500000238418579),
  )
      )
      ),const Positioned(
        top: 70,
        left: 130,
        child: Text('Nombre Usuario', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),const Positioned(
        top: 312,
        left: 130,
        child: Text('Borrar Cuenta', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),const Positioned(
        top: 249,
        left: 130,
        child: Text('Cerrar Sesión', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),const Positioned(
        top: 130,
        left: 130,
        child: Text('Correo electrónico', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),const Positioned(
        top: 188,
        left: 130,
        child: Text('Cambiar la contraseña', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1,
      ),
      )
      ),
            
      Positioned(
      width: 800,
      height: 48,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 155,
        child: Container(
        width: 147,
        height: 48,
        decoration: const BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
      color : Color.fromRGBO(255, 69, 0, 1),
  )
      )
      ),const Positioned(
        top: 12,
        left: 162,
        child: Text('Activar edición', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
        ]
      )
    )
      ],
      )


    );
  }
  static reccon(BuildContext context){
    return Container(
        width: 800,
        height: 700,
        child: Stack(children: <Widget>[
          const Positioned(
              top: 150,
              left: 80,
              child: Text(
                'Recuperar Contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 145, 144, 144),
                    fontFamily: 'Amiko',
                    fontSize: 32,
                    letterSpacing:
                        0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          const Positioned(
              top: 100,
              left: 37,
              child:
                  Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 0.5)),
          Positioned(
              top: 300,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Ingresa tu nueva contraseña',
                      hintText: 'Ingresa nuevamente tu contraseña',
                    ),
                    onSaved: (String? correo) {
                      correo = correo.toString();
                    },
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),
          Positioned(
              top: 350,
              left: 110,
              child: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(200, 50)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Ingresa tu contraseña',
                    ),
                    onSaved: (String? con) {
                      con = con.toString();
                    },
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromARGB(159, 0, 0, 0),
                        fontFamily: 'Berlin Sans FB',
                        fontSize: 13,
                        letterSpacing:
                            0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))),

          Positioned(
              top: 420,
              left: 110,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registro()),
                  );
                },
               
              )),
              const  Positioned(
              top: 370, 
              left: 260, 
              child: Icon(Icons.remove_red_eye)),
          Positioned(
              top: 500,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Layout2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(84, 113, 214, 1)),
                child: const Text(
                  'Confirmar cambio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Amiko',
                      fontSize: 16,
                      letterSpacing:
                          0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ))
        ]));
  }

  }






