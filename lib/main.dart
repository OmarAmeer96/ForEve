import 'package:flutter/material.dart';
import 'package:for_eve/screens/signin_screen.dart';

void main() {
  runApp(const ForEve());
}

class ForEve extends StatelessWidget {
  const ForEve({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
  }
}
