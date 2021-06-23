import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
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
