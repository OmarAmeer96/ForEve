import 'package:flutter/material.dart';
import 'package:for_eve/screens/contact_screen.dart';
import 'package:for_eve/screens/pre_meeting_screen.dart';
import 'package:for_eve/screens/signin_screen.dart';
import 'package:for_eve/widgets/custom_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key});

  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffada6c5),
      appBar: AppBar(
        backgroundColor: const Color(0xffada6c5),
        elevation: 0,
        leadingWidth: 50,
        leading: PopupMenuButton<int>(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Text('Start Meeting'),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text('Button 2'),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          onSelected: (int value) {
            // Handle button press
            switch (value) {
              case 1:
                Navigator.pushNamed(context, PreMeetingScreen.id);
                break;
              case 2:
                // Do something when Button 2 is pressed
                break;
              case 3:
                Navigator.pushNamed(context, SignInScreen.id);
                break;
            }
          },
          offset: const Offset(0, 40),
          child: Transform.scale(
            scale: 1.2,
            child: SizedBox(
              width: 50,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      height: 4,
                      width: 35,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      height: 4,
                      width: 35,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      height: 4,
                      width: 35,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 140,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: const Column(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Text(
                            'Quote of the day',
                            style: TextStyle(
                              color: Color(0xff493b8f),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "\"There is hope, even when your brain tells you there isn't.\"",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 280,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          const Text(
                            'Mood Tracker',
                            style: TextStyle(
                              color: Color(0xff493b8f),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Sat',
                                icon: FontAwesomeIcons.faceSmileBeam,
                              ),
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Sun',
                                icon: FontAwesomeIcons.faceFlushed,
                              ),
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Mon',
                                icon: FontAwesomeIcons.faceSadTear,
                              ),
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Tue',
                                icon: FontAwesomeIcons.faceDizzy,
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Wed',
                                icon: FontAwesomeIcons.faceFrown,
                              ),
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Thu',
                                icon: FontAwesomeIcons.faceGrimace,
                              ),
                              CustomContainer(
                                height: 90,
                                width: 65,
                                text: 'Fri',
                                icon: FontAwesomeIcons.question,
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          const Text(
                            'How are you feeling today?',
                            style: TextStyle(
                              color: Color(0xff493b8f),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomContainer(
                                height: 110,
                                width: 85,
                                text: 'Very Good',
                                icon: FontAwesomeIcons.faceLaugh,
                              ),
                              CustomContainer(
                                height: 110,
                                width: 85,
                                text: 'Good',
                                icon: FontAwesomeIcons.faceSmileBeam,
                              ),
                              CustomContainer(
                                height: 110,
                                width: 85,
                                text: 'Sad',
                                icon: FontAwesomeIcons.faceFrown,
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            'On a measure of 0 to 10, How are you feeling today?',
                            style: TextStyle(
                              color: Color(0xff493b8f),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Slider(
                            value: _sliderValue,
                            min: 0,
                            max: 10,
                            onChanged: (newValue) {
                              setState(() {
                                _sliderValue = newValue;
                              });
                            },
                          ),
                          Text(
                            '${_sliderValue.toInt()}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width: 100,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: FaIcon(
                          Icons.home_outlined,
                          size: 60,
                          color: Color(0xffa69fbd),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: FaIcon(
                          Icons.face_4_outlined,
                          size: 55,
                          color: Color(0xffa69fbd),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: FaIcon(
                            Icons.chat,
                            size: 55,
                            color: Color(0xffa69fbd),
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
