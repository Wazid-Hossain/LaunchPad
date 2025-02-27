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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorCenter = Colors.white;
          _corolOutline = Colors.white;
          player.play(
            AssetSource(widget.note),
          );
        });

        await Future.delayed(
          Duration(microseconds: 70000),
        );

        setState(() {
          _colorCenter = widget.colorCenter;
          _corolOutline = widget.colorOutline;
        });
      },
      child: Container(
        height: height / 8.2,
        width: width / 4.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          gradient: RadialGradient(
            colors: [_colorCenter, _corolOutline],
            radius: 0.5,
          ),
          boxShadow: [
            BoxShadow(color: Colors.pink, blurRadius: 5.0),
          ],
        ),
      ),
    );
  }
}
