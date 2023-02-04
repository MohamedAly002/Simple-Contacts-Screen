import 'package:flutter/material.dart';

import 'ContentsWidgets.dart';
import 'TextFieldWidget.dart';

class ContactScreen extends StatefulWidget{
static const String routeName='ContactScreen';

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  ContentsWidgets content1= ContentsWidgets();
  ContentsWidgets content2= ContentsWidgets();
  ContentsWidgets content3= ContentsWidgets();

TextEditingController namecontroller=TextEditingController();
TextEditingController phonecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.grey,

        appBar: AppBar(
          title: Text('Contacts Screen'), centerTitle: true,
        ),
        body: Column(children: [
          TextFieldWidget(hinttext:
          'Enter The Name',icon: Icons.edit,controller:namecontroller ,),
          TextFieldWidget(hinttext:
          'Enter The Phone Number',icon: Icons.call,controller: phonecontroller,),
          Row(// buttons
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5,top: 10,bottom: 10),
                  child: Expanded(
                    child: ElevatedButton(onPressed: (){
                      addContents();
                    },
                      child: Text('OK',style: TextStyle(fontSize: 30),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.all(15))
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5,top: 10,bottom: 10),
                  child: Expanded(
                    child: ElevatedButton(onPressed: (){
                      deleteContents();
                    },
                      child: Text('Delete',style: TextStyle(fontSize: 30),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                          padding: MaterialStateProperty.all(EdgeInsets.all(15))
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          content1,
          content2,
          content3,



        ],),


      ),
    ) ;
  }
  int ContentCounter=1;
void addContents(){
  if(ContentCounter==1){
    content1=ContentsWidgets(isVisible: true,
        name: namecontroller.text,
      phone: phonecontroller.text,
    );
    ContentCounter++;
    setState(() {});
  }
  else if(ContentCounter==2){
    content2=ContentsWidgets(isVisible: true,
      name: namecontroller.text,
      phone: phonecontroller.text,);
    ContentCounter++;
    setState(() {});
  }
  else if(ContentCounter==3){
    content3=ContentsWidgets(isVisible: true,
      name: namecontroller.text,
      phone: phonecontroller.text,);
    ContentCounter=1;
    setState(() {});

  }
}

  void deleteContents(){
    if(ContentCounter==1){
      content3=ContentsWidgets(isVisible: false,
          name: namecontroller.text='',
          phone: phonecontroller.text='');
      ContentCounter++;
      setState(() {});
    }
    else if(ContentCounter==2){
      content2=ContentsWidgets(isVisible: false,
          name: namecontroller.text='',
          phone: phonecontroller.text='');
      ContentCounter++;
      setState(() {});
    }
    else if(ContentCounter==3){
      content1=ContentsWidgets(isVisible: false,
          name: namecontroller.text='',
          phone: phonecontroller.text='');
      ContentCounter=1;
      setState(() {});

    }
  }
}