import 'package:flutter/material.dart';

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
                height: 150,
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
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
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
