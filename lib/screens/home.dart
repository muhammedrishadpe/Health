// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:health/services/remote_service.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/constent.dart';
import '../models/ad_model.dart';
import '../widgets/calendar.dart';
import '../widgets/card.dart';
import '../widgets/card_Ilustration.dart';
import '../widgets/material_list_tile.dart';

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
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        elevation: 0,
      ),
      body: isLoaded
          ? SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
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
                                      Text(
                                        "Hello ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size * 0.1,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "@Rishad!",
                                        style: TextStyle(
                                          color: yellow,
                                          fontSize: size * 0.1,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/badge.png",
                                          width: size * 0.04,
                                          height: size * 0.04,
                                          color: yellow,
                                        ),
                                        Text(
                                          " 5 achievement ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size * 0.04,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          "assets/icons/magic-wand.png",
                                          width: size * 0.04,
                                          height: size * 0.04,
                                          color: yellow,
                                        ),
                                        Text(
                                          " 10 pts",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size * 0.04,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2.0, left: 20, right: 10),
                                  child: CircleAvatar(
                                    radius:
                                        MediaQuery.of(context).size.width * 0.1,
                                    backgroundColor: Colors.pink,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        50.0,
                                      ),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmy-YvQjLzmty_5BPPoqujOt1Y5HSnr8U9xg&usqp=CAU',
                                        //  width: 100,
                                        // height: 100,
                                        fit: BoxFit.cover,
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
                  Calendar(calendarFormat: _calendarFormat),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 20,
                      left: 18,
                      right: 0,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Looks like it might help you!",
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  PostCard(
                    image: posts![0].imageUrl,
                    title: posts![0].title,
                    description: posts![0].description,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 20,
                      left: 25,
                      right: 0,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Relevent materials",
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //Relevant materials
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                    child: MaterialsListTile(
                      imageUrl:
                          'https://images.unsplash.com/photo-1533122250115-6bb28e9a48c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGlsdXN0cmF0aW9ufGVufDB8fDB8fA%3D%3D',
                      title:
                          "Couple Therapy Has Changed.\nAttachment, Love, and Science.",
                      subTitle: "Relationships Dr.Mark Brown",
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 0.0),
                    child: MaterialsListTile(
                      imageUrl:
                          'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D',
                      title: 'Assessing Partner Abuse in\nCouples Therapy.',
                      subTitle: 'Relationships Dr.Maichelle Hammer',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: const [
                          CardIlustration(
                            image:
                                'https://images.template.net/83385/free-minimal-nature-illustration-rqqi3.jpg',
                            org: 'Public Health',
                            title: 'Letting the toxic \nrelationship go',
                            description:
                                "It can seem impossible. to break free from a toxic relationship. Here's some helpful advice to get you started.",
                            profile:
                                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHByb2ZpbGV8ZW58MHx8MHx8',
                            name: 'By Anna Ruth, Phd',
                            videos: '5',
                            minutes: '25',
                            dividerColor: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CardIlustration(
                            image:
                                'https://images.pexels.com/photos/1684617/pexels-photo-1684617.jpeg?auto=compress&cs=tinysrgb&w=600',
                            org: 'Anthropology',
                            title: 'How Humor Can \nChange Relationship',
                            description:
                                'Are couples with a similar sense of humor more satissfied in ther reletionships?',
                            profile:
                                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8',
                            name: 'By Gina Smiley, Phd',
                            videos: '6',
                            minutes: '30',
                            dividerColor: Colors.red,
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
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
