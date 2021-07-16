import 'package:flutter/material.dart';

import './models/user_emailaddress.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String _title = 'Alucard Login Form';
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Widget loginBtn(MediaQueryData mediaQuery,
      ScaffoldMessengerState scaffoldMess, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0),
        ),
        minimumSize: Size(mediaQuery.size.width * 0.9, 50),
        padding: EdgeInsets.all(10),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          scaffoldMess.showSnackBar(
            SnackBar(
              content: Text('Processing Data'),
            ),
          );
        }
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Text(
        'Log in',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final scaffoldMess = ScaffoldMessenger.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.1,
              ),
              Container(
                height: mediaQuery.size.height * 0.2,
                child: Image.asset(
                  'lib/assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.1,
              ),
              Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  UserEmailAddress(
                    'Your email address',
                    'Please enter a valid email address!',
                  ),
                  UserEmailAddress(
                    'Your email password',
                    'Please enter your email password!',
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.05,
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.05,
                  ),
                  loginBtn(mediaQuery, scaffoldMess, context),
                  TextButton(
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
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.1,
            ),
            Container(
              height: mediaQuery.size.height * 0.3,
              width: mediaQuery.size.width * 0.6,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'lib/assets/images/alucard.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
