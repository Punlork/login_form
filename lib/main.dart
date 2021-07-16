import 'package:flutter/material.dart';

import './models/login_page.dart';
import './models/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    const String _title = 'Alucard Login Form';
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
