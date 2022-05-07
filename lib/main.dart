import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MyApp()
    );
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball = 1;


  @override
  Widget build(BuildContext context) {
    void balls(){
      ball = Random().nextInt(5)+1;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade600,
          title: Text('Magic 8 Balls'),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.teal,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/ball$ball.png'),
                      onPressed: (){
                        setState(() {
                          balls();
                        });
                        },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

