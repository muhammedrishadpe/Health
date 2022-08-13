import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

import '../../components/constent.dart';
import '../../models/get_event.dart';
import '../../services/remote_service.dart';
import '../../widgets/home_widgets/calendar.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final CalendarFormat _calendarFormat = CalendarFormat.week;
  List<GetEvent>? getEvent;
  bool isLoaded = false;

  @override
  void initState() {
    // fetch data from posts api
    getEvents();

    super.initState();
  }

  getEvents() async {
    getEvent = await RemoteService().getEvent();
    if (getEvent != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoaded
        ? SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Calendar(calendarFormat: _calendarFormat),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemCount: getEvent!.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Container(
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
                                        getEvent![index].imageUrl.toString(),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.1,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                    ),
                                    child: Text(
                                      getEvent![index]
                                          .dateTime
                                          .toString(), // posts![0].description,
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
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 0,
                                    ),
                                    child: Text(
                                      getEvent![index]
                                          .title
                                          .toString(), // posts![0].title,
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
                                      getEvent![index]
                                          .description
                                          .toString(), // posts![0].description,
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
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: blue,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              30,
                                            ),
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            // horizontal: 100,
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
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
