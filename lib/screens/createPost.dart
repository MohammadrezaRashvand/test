
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text("comment"),
        content: Container(
          child: Column(
            children: [
              Text("Hello Moj"),
            ],
          ),
        ),
        actions: [
          

        ],
      ),
      
    );
  }
}