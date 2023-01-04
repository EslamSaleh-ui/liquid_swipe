// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:blinking_text/blinking_text.dart';

class container extends StatelessWidget{
final String path;
final String string;

  const container({super.key,required this.path,required this.string});

  @override
  Widget build(BuildContext context) {
  return Stack(children: <Widget> [
  Container(
  decoration: BoxDecoration(
    image: DecorationImage(image:AssetImage(path) ,fit:BoxFit.fill)
  )),
     Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: BlinkText(string,style: const TextStyle(fontFamily: "GreatVibes",fontSize: 30,
        fontWeight:FontWeight.bold ),duration: const Duration(seconds: 2),
        beginColor: Colors.black, endColor:Colors.lightBlue,
          overflow: TextOverflow.fade,
        ),
      ),
    ),
  ]);
  }
}