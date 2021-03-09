import 'package:flutter/material.dart';

class card_repository extends StatefulWidget{

  final String title;
  final Icon icon;
  final String sub;
  final VoidCallback onTap;

  card_repository({Key key, this.title,  this.icon,  this.sub, @required this.onTap});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _card_repository();
  }

}

class _card_repository extends State<card_repository>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 120.0,
        width: 250.0,
        child: GestureDetector(
          onTap: widget.onTap,
          child:  Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //margin: EdgeInsets.all(15),
            elevation: 3.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text(widget.title),
                  subtitle: Text(widget.sub),
                  leading: widget.icon,
                ),
              ],
            ),
          ),
        )
    );
  }
}