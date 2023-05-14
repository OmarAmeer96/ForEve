import 'package:flutter/material.dart';
import 'package:for_eve/screens/home_screen.dart';
import 'package:for_eve/screens/signin_screen.dart';
import 'package:for_eve/screens/signup_screen.dart';

void main() {
  runApp(const ForEve());
}

class ForEve extends StatelessWidget {
  const ForEve({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignInScreen.id: (context) => const SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomeScreen',
    );
  }
}
