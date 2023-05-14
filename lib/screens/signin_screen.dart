import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:for_eve/screens/signup_screen.dart';
import 'package:for_eve/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../widgets/custom_button.dart';
import 'home_screen.dart';

// ignore: must_be_immutable
class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  static String id = 'SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                              const Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 50.5,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  obscureText: false,
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
                              const Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  obscureText: true,
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
                          text: 'Sign In',
                          color: Colors.white,
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              try {
                                // ignore: unused_local_variable
                                UserCredential user = await FirebaseAuth
                                    .instance
                                    .signInWithEmailAndPassword(
                                  email: email!,
                                  password: password!,
                                );
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Signed in successfully.',
                                    ),
                                  ),
                                );
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(context, HomeScreen.id);
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'No user found for that email.',
                                      ),
                                    ),
                                  );
                                } else if (e.code == 'wrong-password') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Wrong password provided for that user.',
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
                              isLoading = false;
                              setState(() {});
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
        ),
      ),
    );
  }
}
