import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Personal/AndroidStudioProjects/tesis_brainstate/lib/User/ui/widgets/videos_repository.dart';

class videosRepositoryList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //height: 230.0,
     // width: 390.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
            ),
            child: videosRepository("Prueba", "https://www.youtube.com/watch?v=Tg-nfUqAWTE"),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 30.0
            ),
            child: videosRepository("Prueba2", "https://www.youtube.com/watch?v=cIv2svAE8w8")
          ),
          Container(
              margin: EdgeInsets.only(
                  top: 30.0
              ),
              child: videosRepository("Prueba3", "https://www.youtube.com/watch?v=KFYlKuvr85g"),
          ),
          Container(
            child: videosRepository("Prueba4", "https://www.youtube.com/watch?v=FxNp1oZMFaE")
          ),
        ],
      ),
    );
  }

}