import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  static String id = 'SignUpScreen';
  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();

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
          child: Form(
            key: formKey,
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
                  height: 260,
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
                                onChanged: (data) {
                                  email = data;
                                },
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
                                onChanged: (data) {
                                  password = data;
                                },
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
                        text: 'Sign Up',
                        color: Colors.white,
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            try {
                              UserCredential user = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: email!,
                                password: password!,
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'The password provided is too weak.',
                                    ),
                                  ),
                                );
                              } else if (e.code == 'email-already-in-use') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'The account already exists for that email.',
                                    ),
                                  ),
                                );
                              }
                            } catch (ex) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'There is an error.',
                                  ),
                                ),
                              );
                            }
                          } else {}
                        },
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
                      "Already have an account?",
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
                        Navigator.pop(context);
                      },
                      child: CustomButton(
                        text: 'Sign In',
                        color: const Color(0xffada6c5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
