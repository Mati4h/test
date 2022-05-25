//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/paginas/crear_trabajador.dart';
//import 'package:flutter_application_1/size_config.dart';
//import 'package:flutter_application_1/paginas/actualizar_trabajador.dart';
//import 'package:flutter_application_1/paginas/listado_obras.dart';
// import 'package:modulo_gestion_obras/theme/app_theme.dart';

//void main() => runApp(const Myapp());

//class Myapp extends StatelessWidget {
  //const Myapp({Key? key}) : super(key: key);

  @override
  //Widget build(BuildContext context) {
    //return MaterialApp(
      //debugShowCheckedModeBanner: false,

      //title: 'Crear Trabajador',
      //home: Scaffold(
        //appBar: AppBar(
          //backgroundColor: Color.fromARGB(124, 255, 200, 0),
          //leading: const Icon(Icons.arrow_back),
          ////title: const Text('Crear Trabajador'),
          //title: const Text('Actualizar Trabajador'),
          //centerTitle: true,
        //),
        //body: SizedBox(
            //child: Padding(
                //padding: EdgeInsets.symmetric(
                    //horizontal: getProportionatedScreenHeight(20)),
                //child: SingleChildScrollView(
                    //child: Column(
                  //children: [
                    //SizedBox(
                      //height: SizeConfig.screenHeight * 0.08,
                    //),
                    ////Create_Trabajador()
                    ////Actualizar_Trabajador()
                    //ListadoObrasScreen()
                    
                  //],
                //)))),
      //),
    //);
  //}
//}
import 'package:flutter/material.dart';

// import 'package:modulo_gestion_obras/screens/gestion_obras_screen.dart';
import 'package:flutter_application_1/paginas/listado_obras.dart';
// import 'package:modulo_gestion_obras/theme/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListadoObrasScreen(),
      // theme: AppTheme.lightTheme(),

    );
  }
}






