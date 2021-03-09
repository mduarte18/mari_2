import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userInfoProfile extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final name = Container(
      child: Text(
        "Eduardo Lopez",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0
        ),
      ),
    );

    final correo = Container(
      margin: EdgeInsets.only(
        top: 5.0
      ),
      child: Text(
        "eduardojls224@gmail.com",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0
        ),
      ),
    );

    final telf = Container(
      margin: EdgeInsets.only(
          top: 5.0
      ),
      child: Text(
        "0412-3408493",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0
        ),
      ),
    );

    final user_info = Container(
      margin: EdgeInsets.only(
        left: 25.0,
        top: 25.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          name,
          correo,
          telf
        ],
      ),
    );


    final photo = Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              //image: AssetImage(user.photoURL)
              image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/519-y7vsUrL._AC_.jpg"),
          )
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 90.0,
        left: 20.0
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          photo,
          user_info
        ],
      ),
    );

  }


}