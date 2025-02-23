import 'package:flutter/material.dart';
import 'package:solutin_1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'LaunchPad',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.black,
          // centerTitle: true,
        ),
        body: Wrap(
          children: [
            Pad(
              colorCenter: Color(0xffADCBFC),
              colorOutline: Color(0xff067CCB),
              note: '1.mp3',
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
