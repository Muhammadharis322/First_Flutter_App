import 'package:flutter/material.dart';

import 'login_widget.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:  Center(child: Text("LOGIN APPLICATION",style: TextStyle(fontWeight: FontWeight.bold),))),
        body:
        Center(child: LoginWidget()),
      ),
    );
  }
}
 
