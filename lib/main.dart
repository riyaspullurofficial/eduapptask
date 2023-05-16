import 'package:eduapptask/view/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() /*async*/{
/*  await FlutterWindowManager.addFlags(
      FlutterWindowManager.FLAG_SECURE);*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    hello();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }

  void hello()async{

    await FlutterWindowManager.addFlags(
        FlutterWindowManager.FLAG_SECURE);
  }
}
