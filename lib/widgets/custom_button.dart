import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.text, this.color});

  String? text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(child: Text(text!)),
    );
  }
}
