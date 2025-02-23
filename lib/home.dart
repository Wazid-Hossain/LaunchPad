import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [_colorCenter, _corolOutline],
        ),
      ),
    );
  }
}
