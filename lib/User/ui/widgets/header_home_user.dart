import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesis_brainstate/Widget/gradient_back.dart';

class headerHomeUser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final img = Container(
      height: 200.0,
      width: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/img/Yoga.png")
        )
      ),
    );

    final text_principal = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
              top: 50.0,
             left: 30.0
          ),
          child: Text(
            '¡RESPIRA!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10.0,
              left: 30.0
          ),
          child: Text(
            'Todo estará bien',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );

    final textImg = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text_principal,
        Container(
          margin: EdgeInsets.only(
            top: 80.0
          ),
          child: img,
        )
      ],
    );

    return Stack(
      children: [
        TopGradientBox(height: 250.0),
        textImg
      ],
    );
  }

}