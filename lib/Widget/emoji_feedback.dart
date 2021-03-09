import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class emoji_feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final feedback =  Center(
      child:  Container(
        child: EmojiFeedback(onChange: (index) {
          print("Index es: " + index.toString());
        }
        ),
      ),
    );


    final text = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          bottom: 20.0,
        top: 20.0
      ),
      child: Text(
        '¿Cómo te sientes hoy?',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        bottom: 15.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text,
          feedback
        ],
      ),
    );


  }
}