import 'package:flutter/material.dart';
import 'package:sign_in_screen/screens/get_started.dart';
import 'package:sign_in_screen/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Fira Sans'),
      title: 'OnBoarding Screen',
      // home: GetStarted(),
      home: SignIn(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => GetStarted(),
      //   'signin': (context) => SignIn(),
      // },
    );
  }
}
