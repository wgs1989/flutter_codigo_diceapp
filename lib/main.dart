import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 2;

  @override
  Widget build(BuildContext context) {
    print('BUILD!!!!');
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('DiceApp'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print('Dado izquierdo');
                  leftDice = 6;
                  setState(() {});
                  print(leftDice);
                },
                child: Image.asset(
                  'assets/images/dice$leftDice.png',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print('Dado derecho');
                },
                child: Image.asset(
                  'assets/images/dice4.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
