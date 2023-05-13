import 'package:flutter/material.dart';
import 'package:for_eve/screens/signup_screen.dart';
import 'package:for_eve/widgets/custom_text_field.dart';

import '../widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String id = 'SignInScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/logo2.jpg',
                width: 280,
                height: 280,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 220,
                decoration: const BoxDecoration(
                  color: Color(0xffada6c5),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 16,
                        right: 16,
                      ),
                      child: Row(
                        children: [
                          const Text('Email'),
                          const SizedBox(
                            width: 47,
                          ),
                          Expanded(
                            child: CustomTextField(
                              hintText: 'Enter Your Email',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          const Text('Password'),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomTextField(
                              hintText: 'Enter Your Password',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      text: 'Sign In',
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    child: CustomButton(
                      text: 'Sign Up',
                      color: const Color(0xffada6c5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
