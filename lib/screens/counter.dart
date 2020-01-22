import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  void Decrement() {
    setState(() {
      count = count - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              splashColor: Colors.red,
              child: Text('Increment', style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              onPressed: () => increment(),
              color: Colors.blue,
            ),
            Text(
              '$count', style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
            ),
            RaisedButton(
              splashColor: Colors.red,
              child: Text('Decrement', style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
              onPressed: () => Decrement(),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
