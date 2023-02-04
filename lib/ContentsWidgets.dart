import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentsWidgets extends StatelessWidget {
bool isVisible;
String name;
String phone;
ContentsWidgets({this.isVisible=false,this.name="",this.phone=""});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(40)
              ),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              padding: EdgeInsets.all(35),
              child:Column(children: [
                Text('Name: $name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('Phone: $phone',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],),),
          ),
        ],
      ),
    );
  }
}
