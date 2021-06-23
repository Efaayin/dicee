import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$leftDieNumber.png'),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$rightDieNumber.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              child: Text(
                'Roll Dice',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                setState(() {
                  leftDieNumber = Random().nextInt(6) + 1;
                  rightDieNumber = Random().nextInt(6) + 1;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(50, 10, 50, 10),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text(
                'Reset Dice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                setState(() {
                  leftDieNumber = 1;
                  rightDieNumber = 1;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade400),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(50, 10, 50, 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
