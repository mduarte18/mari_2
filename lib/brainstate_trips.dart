import 'package:flutter/material.dart';
import 'User/ui/screens/home_user.dart';
import 'chat_screen.dart';
import 'User/ui/screens/profile_screen.dart';


class home_trips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _home_trips();
  }

}

class _home_trips extends State<home_trips>{

  int indextap = 0;

  final List widgetsChildren = [
    home_user(),
    chat_screen(),
    profile_screen()
  ];

  void onTapTapped(int index){
    setState(() {
        indextap = index;
    });
  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indextap],
     bottomNavigationBar: (Theme(
       data: Theme.of(context).copyWith(
         canvasColor: Colors.white,
         primaryColor: Colors.indigo
       ),
       child:
       BottomNavigationBar(
         onTap: onTapTapped,
         currentIndex: indextap,
         //selectedFontSize: 0,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("Home")
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.message),
               title: Text("Chatbot")
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.person),
               title: Text("Perfil")
           ),
         ],
       )
    )
     )
     );

  }


}