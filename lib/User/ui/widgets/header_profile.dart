import 'package:flutter/material.dart';
import 'package:tesis_brainstate/Widget/gradient_back.dart';
import 'package:tesis_brainstate/User/ui/widgets/user_info_profile.dart';


class headerprofile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final text = Container(
      margin: EdgeInsets.only(
          top: 30.0,
          left: 40.0
      ),
      child: Text(
        "Perfil",
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0
        ),
      ),
    );


    return Container(
      child: Stack(
        children: [
          TopGradientBox(height: 250.0),
          text,
          userInfoProfile()
        ],
      ),
    );
  }

}