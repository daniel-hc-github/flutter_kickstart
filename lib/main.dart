import 'package:flutter/material.dart';
import 'package:flutter_kickstarter/pages/login/login.dart';
import 'package:flutter_kickstarter/pages/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => Splash(),
        "/login" : (context) => Login(),
      },
    );
  }
}



