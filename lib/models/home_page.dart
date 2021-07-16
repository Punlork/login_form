import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-tag';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 72.0,
          backgroundImage: AssetImage(
            'lib/assets/images/alucard.jpg',
          ),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.white,
        ),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'lorem',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );

    final body = Container(
      width: mediaQuery.size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blue,
          ],
        ),
      ),
      child: Column(
        children: [
          alucard,
          welcome,
          lorem,
        ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
