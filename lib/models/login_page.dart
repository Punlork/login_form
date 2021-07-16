import 'package:flutter/material.dart';

import './home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-tag';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final logo = Hero(
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset(
          'lib/assets/images/logo.png',
        ),
      ),
      tag: 'hero',
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(
          20.0,
          10.0,
          20.0,
          10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(
          20.0,
          10.0,
          20.0,
          10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.lightBlueAccent,
        ),
      ),
    );

    final forgotLabel = TextButton(
      child: const Text(
        'Forget Password?',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.grey,
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(
            left: 24.0,
            right: 24.0,
          ),
          children: [
            logo,
            SizedBox(
              height: mediaQuery.size.height * 0.1,
            ),
            email,
            SizedBox(
              height: mediaQuery.size.height * 0.02,
            ),
            password,
            SizedBox(
              height: mediaQuery.size.height * 0.02,
            ),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
