import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Pad extends StatefulWidget {
  final Colorcenter;
  final ColorOutline;
  final note;
  const Pad({this.Colorcenter, this.ColorOutline, this.note, super.key});

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _Colorcenter;
  late Color _CorolOutline;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
