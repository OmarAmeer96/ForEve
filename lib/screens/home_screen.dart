import 'package:flutter/material.dart';
import 'package:for_eve/widgets/custom_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  static String id = 'HomeScreen';

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
            PopupMenuItem(
              value: 1,
              child: Text('Button 1'),
            ),
            PopupMenuItem(
              value: 2,
              child: Text('Button 2'),
            ),
            PopupMenuItem(
              value: 3,
              child: Text('Button 3'),
            ),
          ],
          onSelected: (int value) {
            // Handle button press
            switch (value) {
              case 1:
                // Do something when Button 1 is pressed
                break;
              case 2:
                // Do something when Button 2 is pressed
                break;
              case 3:
                // Do something when Button 3 is pressed
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
                      "\"There is hope, even when your",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "brain tells you there isn't.\"",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
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
              const Spacer(
                flex: 1,
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
              const Spacer(
                flex: 3,
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
