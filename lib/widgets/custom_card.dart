import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String? image;
  final String? text;
  final Color? color;
  const CustomCard({
    Key? key,  required this.image,  required this.text,required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      color: color,
      child: Row(children: [
        Container(
          margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: 70,
          height: 70,
          child:  CircleAvatar(
            radius: 10,
            backgroundImage:NetworkImage(image!)
            
          ),
            
        ),
         Text(text!)
      ]),
    );
  }
}