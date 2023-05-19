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

// ignore: must_be_immutable
class PreMeetingScreen extends StatefulWidget {
  PreMeetingScreen({Key? key}) : super(key: key);

  static String id = 'MeetingScreen';

  @override
  // ignore: library_private_types_in_public_api
  _PreMeetingScreenState createState() => _PreMeetingScreenState();
}

class _PreMeetingScreenState extends State<PreMeetingScreen> {
  String? selectedDay;

  bool mondaySelected = false;
  bool tuesdaySelected = false;
  bool wednesdaySelected = false;
  bool thursdaySelected = false;
  bool fridaySelected = false;
  bool saturdaySelected = false;
  bool sundaySelected = false;

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
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffa69fbd),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'When would you like the meeting with the therapist be?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RadioListTile<String>(
                              title: const Text('Saturday'),
                              value: 'Monday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Sunday'),
                              value: 'Tuesday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Monday'),
                              value: 'Wednesday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Tuesday'),
                              value: 'Thursday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Wednesday'),
                              value: 'Friday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Thursday'),
                              value: 'Saturday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Friday'),
                              value: 'Sunday',
                              groupValue: selectedDay,
                              onChanged: (value) {
                                setState(
                                  () {
                                    selectedDay = value;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffa69fbd),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'How are feeling now?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CheckboxListTile(
                              title: const Text('Anxiety'),
                              value: mondaySelected,
                              onChanged: (value) {
                                setState(() {
                                  mondaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Depression'),
                              value: tuesdaySelected,
                              onChanged: (value) {
                                setState(() {
                                  tuesdaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Self-esteem'),
                              value: wednesdaySelected,
                              onChanged: (value) {
                                setState(() {
                                  wednesdaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Relationships'),
                              value: thursdaySelected,
                              onChanged: (value) {
                                setState(() {
                                  thursdaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Hormones'),
                              value: fridaySelected,
                              onChanged: (value) {
                                setState(() {
                                  fridaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Body image'),
                              value: saturdaySelected,
                              onChanged: (value) {
                                setState(() {
                                  saturdaySelected = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Motherhood'),
                              value: sundaySelected,
                              onChanged: (value) {
                                setState(() {
                                  sundaySelected = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.call,
                                    size: 30,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
