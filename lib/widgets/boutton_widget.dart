import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const BottomBarWidget({super.key, required this.text, required this.color, required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return const BottomBarWidget(text: '', color: Colors.black, fontSize: 18.0,

    );
  }

}