import 'package:chat_app/views/search.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/helper/authenticate.dart';
import 'package:chat_app/services/auth.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat App',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              AuthMethods().signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder:  (context) => Authenticate()
              ));
            },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.exit_to_app)
          )
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => SearchScreen()
          ));
        },
      ),
    );
  }
}
