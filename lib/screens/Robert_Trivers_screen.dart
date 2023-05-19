import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_screen.dart';
import 'home_screen.dart';

class RobertTrivers extends StatelessWidget {
  const RobertTrivers({super.key});

  static String id = 'RobertTriversScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffada6c5),
        title: const Text(
          'Robert Trivers',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffada6c5),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 54, 36, 143),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Robert Trivers',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
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
                      color: Color(0xffada6c5),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Learning',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 54, 36, 143),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Robert Trivers is an evolutionary biologist and sociobiologist known for his contributions to the field of evolutionary theory. His research explores the evolution of social behavior, parental investment, sexual selection, and reciprocal altruism. Trivers' work has had a profound impact on understanding the adaptive strategies and conflicts that shape social interactions among individuals in various species.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
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
                      color: Color(0xffada6c5),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 54, 36, 143),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'United States',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
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
                      color: Color(0xffada6c5),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Work Years',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 54, 36, 143),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Robert Trivers has been actively engaged in scientific research and teaching since the 1960s, making significant contributions to the field of evolutionary biology over several decades.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
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
                      onTap: () async {
                        final Uri url =
                            Uri(scheme: 'tel', path: '+20 155 411 1002');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
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
                      Navigator.pushNamed(context, HomeScreen.id);
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
    );
  }
}