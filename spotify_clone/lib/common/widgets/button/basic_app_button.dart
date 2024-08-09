import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton(
      {required this.onPressed, required this.title, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(height ?? 80),
            backgroundColor: Color(0xff42C83C)),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ));
  }
}
