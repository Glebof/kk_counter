import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[400],
            centerTitle: true,
            title: Text("Counter"),
          ),
          body: Container(
            color: Colors.indigo[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tap \"-\" to decrement",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                CounterWidget(),
                Text(
                  "Tap \"+\" to increment",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          )),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(children: [
            SizedBox(
              width: 40,
              child: TextButton(
                  onPressed: _decrementCounter,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo[100]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  // child: Text("-", style: TextStyle(color: Colors.black))),
                      child: Icon(Icons.remove, size: 20, color: Colors.black)),
            ),
            Container(
              height: 36,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.indigo[100]),
              child: Text(
                "${_count}",
              ),
            ),
            SizedBox(
              width: 40,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo[100]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add, size: 20, color: Colors.black)),
            ),
            // ],
            // )
          ]),
        ),
      ),
    ]);
  }
}
