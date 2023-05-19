import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_eve/screens/Barbara_L_Fredrickson_screen.dart';
import 'package:for_eve/screens/Paul_Ekman_screen.dart';
import 'package:for_eve/screens/Robert_J_Plomin_screen.dart';
import 'package:for_eve/screens/Robert_Sternberg_screen.dart';
import 'package:for_eve/screens/Robert_Trivers_screen.dart';
import 'package:for_eve/screens/Susan_Blackmore_screen.dart';
import 'package:for_eve/screens/contact_screen.dart';
import 'package:for_eve/screens/home_screen.dart';
import 'package:for_eve/screens/pre_meeting_screen.dart';
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
        HomeScreen.id: (context) => HomeScreen(),
        ContactScreen.id: (context) => const ContactScreen(),
        PreMeetingScreen.id: (context) => const PreMeetingScreen(),

        BarbaraLFredrickson.id: (context) => const BarbaraLFredrickson(),
        RobertJPlomin.id: (context) => const RobertJPlomin(),
        RobertSternberg.id: (context) => const RobertSternberg(),
        RobertTrivers.id: (context) => const RobertTrivers(),
        SusanBlackmore.id: (context) => const SusanBlackmore(),
        PaulEkman.id: (context) => const PaulEkman(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'SignInScreen',
    );
  }
}
