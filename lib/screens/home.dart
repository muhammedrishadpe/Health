// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:health/services/remote_service.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/constent.dart';
import '../models/ad_model.dart';
import '../widgets/calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CalendarFormat _calendarFormat = CalendarFormat.week;
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    // fetch data from posts api
    getData();

    super.initState();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        elevation: 0,
      ),
      body: isLoaded
          ? Column(
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        40,
                      ),
                      bottomRight: Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      top: 1,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Hello ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "@Rishad!",
                                      style: TextStyle(
                                        color: yellow,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/badge.png",
                                      width: 20,
                                      height: 20,
                                      color: yellow,
                                    ),
                                    const Text(
                                      " 5 achievement ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      "assets/icons/magic-wand.png",
                                      width: 20,
                                      height: 20,
                                      color: yellow,
                                    ),
                                    const Text(
                                      " 10 pts",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2.0,
                                left: 25,
                              ),
                              child: CircleAvatar(
                                radius: 35.0,
                                backgroundColor: Colors.pink,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    50.0,
                                  ),
                                  child: Image.network(
                                    'https://c8.alamy.com/comp/TC2FPE/young-man-avatar-cartoon-character-profile-picture-TC2FPE.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
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
                Calendar(calendarFormat: _calendarFormat),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20,
                        left: 0,
                        right: 0,
                      ),
                      child: Text(
                        "Looks like it might help you!",
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 450,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            spreadRadius: -2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.network(
                                posts![0].imageUrl.toString(),
                                width: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 0,
                            ),
                            child: Text(
                              posts![0].title,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: Text(
                              posts![0].description,
                              style: const TextStyle(
                                height: 1.5,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(
                                  255,
                                  107,
                                  107,
                                  107,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: blue,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 100,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    backgroundColor: blue,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Learn More",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
