import 'package:contacts_screen/ContactScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Contact Screen',
    routes:{
      ContactScreen.routeName:(_)=>ContactScreen()
    },
initialRoute: ContactScreen.routeName,

  ));
}