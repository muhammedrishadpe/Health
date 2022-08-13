import 'package:flutter/material.dart';
import 'package:health/components/constent.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../event/event_page.dart';
import '../home/home.dart';
import '../profile/profile.dart';
import '../counselingReading/counsilng_reading.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final tabs = [
    const Home(),
    const ReadingPage(),
    const EventPage(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: StylishBottomBar(
        items: [
          AnimatedBarItems(
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/house.png",
                ),
                size: 20,
              ),
              selectedColor: blue,
              // backgroundColor: Colors.amber,
              title: const Text('')),
          AnimatedBarItems(
              icon: const ImageIcon(
                AssetImage("assets/icons/clipboard.png"),
                size: 20,
              ),
              selectedColor: blue,
              title: const Text('')),
          AnimatedBarItems(
              icon: const ImageIcon(
                AssetImage("assets/icons/book.png"),
                size: 20,
              ),
              backgroundColor: blue,
              title: const Text('')),
          AnimatedBarItems(
              icon: const ImageIcon(
                AssetImage("assets/icons/person.png"),
                size: 25,
              ),
              selectedColor: blue,
              title: const Text('')),
        ],
        iconSize: 32,
        barAnimation: BarAnimation.fade,
        iconStyle: IconStyle.animated,
        hasNotch: false,
        opacity: 0.3,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index!;
          });
        },
      ),
    );
  }
}
