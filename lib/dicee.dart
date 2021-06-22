import 'package:flutter/material.dart';

class Dicee extends StatelessWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Sugar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/dice1.png'),
            ),
            Expanded(
              child: Image.asset('images/dice1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
