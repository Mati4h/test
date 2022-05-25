import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/crear_trabajador.dart';
import 'package:flutter_application_1/size_config.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Crear Trabajador',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(124, 255, 200, 0),
          leading: const Icon(Icons.arrow_back),
          title: const Text('Crear Trabajador'),
          centerTitle: true,
        ),
        body: SizedBox(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionatedScreenHeight(20)),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.08,
                    ),
                    Create_Trabajador()
                  ],
                )))),
      ),
    );
  }
}






