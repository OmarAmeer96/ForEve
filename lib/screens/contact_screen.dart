import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  static String id = 'contactScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffada6c5),
        title: const Text(
          'Contact Us',
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
        padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                final Uri url = Uri(scheme: 'tel', path: '+20 155 411 1002');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xffada6c5),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Omar Ameer',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Icon(
                      FontAwesomeIcons.phoneFlip,
                      size: 30,
                      color: Colors.green[800],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri(scheme: 'tel', path: '+20 106 940 7448');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xffada6c5),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Adyan Sherif',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Icon(
                      FontAwesomeIcons.phoneFlip,
                      size: 30,
                      color: Colors.green[800],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri(scheme: 'tel', path: '+20 127 419 4417');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xffada6c5),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Mayar Maher',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 76,
                    ),
                    Icon(
                      FontAwesomeIcons.phoneFlip,
                      size: 30,
                      color: Colors.green[800],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri(scheme: 'tel', path: '+20 127 416 2721');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xffada6c5),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Mohamed El-Aasar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    Icon(
                      FontAwesomeIcons.phoneFlip,
                      size: 30,
                      color: Colors.green[800],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
