import 'package:flutter/material.dart';
import 'package:tesis_brainstate/User/ui/widgets/header_profile.dart';
import 'package:tesis_brainstate/User/ui/widgets/card_imagelist_profile.dart';


class profile_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   return ListView(
     children: [
       headerprofile(),
       cardImageListProfile()
     ],
   );
  }

}