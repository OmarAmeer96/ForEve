import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, this.height, this.width});

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: const Color(0xffada6c5),
            width: 2,
          ),
        ),
        height: height,
        width: width,
      ),
    );
  }
}
