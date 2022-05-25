import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 270,
          margin: const EdgeInsets.only(left: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              label: Text('Buscar Trabajador')
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: FloatingActionButton(
            child:const Icon(Icons.add),
            onPressed: (){},
            backgroundColor: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}