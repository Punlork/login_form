import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String _title = 'Alucard Login Form';
    return MaterialApp(
      title: _title,
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 5,
                      ),
                      // padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email *',
                          hintText: 'Your email address',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.05,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password *',
                    hintText: 'Your email password',
                  ),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.05,
                ),
                ElevatedButton(
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.05,
                ),
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
    );
  }
}
