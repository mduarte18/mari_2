import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class chat_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _chat_screen();
  }

}

class _chat_screen extends State<chat_screen>{

  final messagecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Asistente'
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: 10.0
                ),
                child: Text(
                  'Hoy, ${new DateFormat('jm').format(DateTime.now())}',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
            ),

            Flexible(
              child: ListView.builder(
                reverse: true,
                  itemCount: 0,
                  itemBuilder: (context, index){}
              ),
            ),

            Divider(
              height: 5.0,
              color: Colors.indigo,
            ),
            Container(
              child: ListTile(
                title: Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Color.fromRGBO(220, 220, 220, 1)
                  ),
                  padding: EdgeInsets.only(left: 15.0),
                  child: TextFormField(
                    controller: messagecontroller,
                    decoration: InputDecoration(
                      hintText: 'Escribe un mensaje',
                      hintStyle: TextStyle(
                        color: Colors.black26
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none
                    ),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black
                    ),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.send,
                  size: 30.0,
                  color: Colors.indigo
                  ),
                  onPressed: (){
                    if(messagecontroller.text.isEmpty){
                      print("Mensaje vacio");
                    } else{
                      setState(() {

                      });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }