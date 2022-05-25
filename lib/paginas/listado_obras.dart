import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';
import 'package:flutter_application_1/widgets/custom_search.dart';

class ListadoObrasScreen extends StatelessWidget {
   
  const ListadoObrasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Listado de trabajadores'),
        leading: const Icon(Icons.arrow_back),
        backgroundColor: const Color(0xffF5DA7B),
      ),
      body: Column(children:const [
        CustomSearch(),
        CustomCard(
        color: Colors.greenAccent,
        text: 'Hernesto Gonzalez',
        image: ''),
        
       
        CustomCard(
        color: Colors.greenAccent,
        text: 'Hernesto Gonzalez',
        image: ''),
        CustomCard(
        color: Colors.redAccent,
        text: 'Hernesto Gonzalez',
        image: ''),
      ],)
    );
  }
}