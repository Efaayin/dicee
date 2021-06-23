import 'package:flutter/material.dart';

class Dicee extends StatelessWidget {
  Dicee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var leftDiceNumber = 4;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice2.png'),
                onPressed: () {print('right button clicked');},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
