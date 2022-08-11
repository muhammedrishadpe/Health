import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../components/constent.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/icons/settings.png',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/icons/notification.png',
              width: 30,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/icons/email.png',
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        elevation: 0,
      ),
      body: Stack(
        children: [
          DraggableHome(
            curvedBodyRadius: 30,
            headerExpandedHeight: 0.10,
            title: const Text(""),
            headerWidget: Container(
              color: const Color.fromARGB(255, 231, 231, 231),
            ),
            body: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 0, right: 10),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.pink,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          100.0,
                        ),
                        child: Image.network(
                          'https://i.pinimg.com/originals/2b/dd/ba/2bddba9e8ee56a3b5819334fe559bb3c.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "@Rishad   ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/badge.png",
                        width: 18,
                        height: 18,
                        color: yellow,
                      ),
                      const Text(
                        " 5 achievement ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 127, 127, 127),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/icons/magic-wand.png",
                        width: 18,
                        height: 18,
                        color: yellow,
                      ),
                      const Text(
                        " 10 pts",
                        style: TextStyle(
                          color: Color.fromARGB(255, 127, 127, 127),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.all(20),
                    width: 320,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 233, 233, 233),
                    ),
                    // color: Colors.red,
                    child: Center(
                      child: ToggleSwitch(
                        fontSize: 15,
                        animate: true,
                        curve: Curves.fastOutSlowIn,
                        minWidth: 150.0,
                        cornerRadius: 20.0,
                        // animationDuration: 0,
                        activeBgColors: const [
                          [Colors.white],
                          [Colors.white]
                        ],
                        activeFgColor: blue,
                        inactiveBgColor:
                            const Color.fromARGB(255, 233, 233, 233),
                        inactiveFgColor: const Color.fromARGB(255, 67, 67, 67),
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: const ['ACHIEVEMENTS', 'SCREENINGS'],
                        radiusStyle: true,
                        onToggle: (index) {},
                      ),
                    ),
                  ),
                ],
              )
            ],
            fullyStretchable: true,
            backgroundColor: Colors.white,
            appBarColor: blue,
          ),
        ],
      ),
    );
  }
}
