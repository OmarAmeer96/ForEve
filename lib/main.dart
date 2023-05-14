import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_eve/screens/contact_screen.dart';
import 'package:for_eve/screens/home_screen.dart';
import 'package:for_eve/screens/signin_screen.dart';
import 'package:for_eve/screens/signup_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ForEve());
}

class ForEve extends StatelessWidget {
  const ForEve({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ContactScreen.id: (context) => const ContactScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'SignInScreen',
    );
  }
}
