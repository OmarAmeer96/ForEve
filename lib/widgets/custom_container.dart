import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, this.height, this.width, this.text, this.icon});

  double? height;
  double? width;
  String? text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: const Color(0xffbebcc7),
            width: 3,
          ),
        ),
        height: height,
        width: width,
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              text!,
              style: const TextStyle(
                  color: Color(0xffbebcc7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const Spacer(
              flex: 1,
            ),
            FaIcon(
              icon,
              size: 38,
              color: const Color(0xffbebcc7),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
