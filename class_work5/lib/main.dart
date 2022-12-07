import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // int count = 0;
  // count++;
  // print(count)
  var image1 = 1;
  var image2 = 1;
  var image3 = 1;
  void images() {
    image1 = Random().nextInt(3) + 1;
    image2 = Random().nextInt(3) + 1;
    image3 = Random().nextInt(3) + 1;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text("rock paper scissors")),
        ),
        body: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Image.asset("assets\images\i_$image1.png"),
                  Image.asset("assets\images\i_$image2.png")
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        images();
                      },
                      child: Text("play")),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text("0"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
