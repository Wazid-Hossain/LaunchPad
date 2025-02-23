import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:solutin_1/pad.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

class Pad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final note;
  const Pad({this.colorCenter, this.colorOutline, this.note, super.key});

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;
  late Color _corolOutline;
  final player = AudioPlayer();
  @override
  void initState() {
    _colorCenter = widget.colorCenter;
    _corolOutline = widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [_colorCenter, _corolOutline],
          ),
        ),
      ),
    );
  }
}
