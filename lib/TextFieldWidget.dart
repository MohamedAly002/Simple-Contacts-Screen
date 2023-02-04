import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hinttext;
  IconData? icon;
  TextEditingController controller;
  String? name;
  TextFieldWidget({required this.hinttext,this.icon,required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right:5,bottom: 8,top: 20),
      child:  TextField(
        controller: controller,
        onSubmitted: (val){
          name=val;

        },
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
            hintText: '$hinttext',
            hintStyle: TextStyle(color: Colors.grey,
                fontSize: 20,fontWeight: FontWeight.bold),
            suffixIcon: Icon(icon,color: Colors.blue,),
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue)
            ),fillColor: Colors.white,filled: true),
      ),
    );
  }
}
