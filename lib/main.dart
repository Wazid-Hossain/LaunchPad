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
              note: 'kick.wav',
            ),
            Pad(
              colorCenter: Color(0xffff2525),
              colorOutline: Color(0xffC40050),
              note: 'kick.wav',
            ),
            Pad(
              colorCenter: Color(0xffADCBFC),
              colorOutline: Color(0xff067CCB),
              note: 'kick.wav',
            ),
            Pad(
              colorCenter: Color(0xffE247FC),
              colorOutline: Color(0xffA23AB7),
              note: 'kick.wav',
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
