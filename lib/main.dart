import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var lnum = 1;
  var rnum =1;
  void changeNum(){
    lnum= Random().nextInt(6)+1;
    rnum= Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                changeNum();
                print("Button 1 dab gya ...");
              });
          },
            child: Image.asset('images/dice$lnum.png'),

          )),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                changeNum();
                print("Button dab gya 2...");
              });
            },
            child: Image.asset('images/dice$rnum.png'),

          ))

        ],
      ),
    );

  }
}

