import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_eve/screens/Barbara_L_Fredrickson_screen.dart';
import 'package:for_eve/screens/Paul_Ekman_screen.dart';
import 'package:for_eve/screens/Robert_J_Plomin_screen.dart';
import 'package:for_eve/screens/Robert_Sternberg_screen.dart';
import 'package:for_eve/screens/Robert_Trivers_screen.dart';
import 'package:for_eve/screens/Susan_Blackmore_screen.dart';
import 'package:for_eve/widgets/custom_therapist_card.dart';
import 'contact_screen.dart';

class PreMeetingScreen extends StatelessWidget {
  const PreMeetingScreen({super.key});

  static String id = 'MeetingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffada6c5),
        title: const Text(
          'Join Meeting',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 26,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffa69fbd),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Choose the Therapist (If more than one is selected, only the available doctor will be selected.)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 250,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CustomTherpistCard(
                                    image:
                                        'assets/images/10-Barbara-L-Fredrickson.jpg',
                                    name: 'Barbara L Fredrickson',
                                    numStars: 5,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, BarbaraLFredrickson.id);
                                    },
                                  ),
                                  CustomTherpistCard(
                                    image:
                                        'assets/images/16-Robert-J-Plomin.jpg',
                                    name: 'Robert J Plomin',
                                    numStars: 2,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, RobertJPlomin.id);
                                    },
                                  ),
                                  CustomTherpistCard(
                                    image:
                                        'assets/images/22-Robert-Sternberg.png',
                                    name: 'Robert Sternberg',
                                    numStars: 4,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, RobertSternberg.id);
                                    },
                                  ),
                                  CustomTherpistCard(
                                    image:
                                        'assets/images/23-Robert-Trivers.jpg',
                                    name: 'Robert Trivers',
                                    numStars: 1,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, RobertTrivers.id);
                                    },
                                  ),
                                  CustomTherpistCard(
                                    image:
                                        'assets/images/25-Susan-Blackmore.jpg',
                                    name: 'Susan Blackmore',
                                    numStars: 1,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, SusanBlackmore.id);
                                    },
                                  ),
                                  CustomTherpistCard(
                                    image: 'assets/images/26-Paul-Ekman.jpg',
                                    name: 'Paul Ekman',
                                    numStars: 4,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, PaulEkman.id);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 100,
                        height: 65,
                        decoration: const BoxDecoration(
                          color: Color(0xffa69fbd),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: FaIcon(
                            Icons.home_outlined,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width: 100,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Color(0xffa69fbd),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: FaIcon(
                          Icons.face_4_outlined,
                          size: 55,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ContactScreen.id);
                      },
                      child: Container(
                        width: 100,
                        height: 65,
                        decoration: const BoxDecoration(
                          color: Color(0xffa69fbd),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: FaIcon(
                            Icons.chat,
                            size: 55,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
