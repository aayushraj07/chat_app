import 'package:flutter/material.dart';

Widget appBarMain(BuildContext){
  return AppBar(
    title: const Text(
      'Chat App',
      style: TextStyle(fontFamily: 'Pacifico'),
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
    hintText: hintText,
      hintStyle: TextStyle(
        color:Colors.white54,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      )

  );
}

simpleTextStyle(){
  return TextStyle(
    color:Colors.white,
    fontSize: 16
  );
}

mediumTextStyle(){
  return TextStyle(
      color:Colors.white,
      fontSize: 17
  );
}