// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:health/models/ad_model.dart';
import 'package:health/models/get_staff.dart';

import '../../components/constent.dart';
import '../../services/remote_service.dart';

class ReadingView extends StatefulWidget {
  final Post posts;

  const ReadingView({required this.posts, super.key});

  @override
  State<ReadingView> createState() => _ReadingViewState();
}

class _ReadingViewState extends State<ReadingView> {
  var isLoaded = false;
  List<Getstaff>? Staff;
  @override
  void initState() {
    // fetch data from GetStaff api
    getstaff();

    super.initState();
  }

  getstaff() async {
    Staff = await RemoteService().getStaff();
    if (widget.posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return isLoaded
        ? SafeArea(
            child: DraggableHome(
              curvedBodyRadius: 30,
              headerExpandedHeight: 0.34,
              title: const Text(""),
              headerWidget: headerWidget(context),
              body: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Counseling",
                        style: TextStyle(
                          color: blue,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.posts.title,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.posts.description,
                        style: const TextStyle(
                            height: 1.6,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 98, 98, 98)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const ExpansionTile(
                        title: Text(
                          'Scope of Practice',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        childrenPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        children: <Widget>[
                          Text(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitiam olestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 117, 117, 117)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const ExpansionTile(
                        title: Text(
                          'Frequently Asked Questions',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        childrenPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        children: <Widget>[
                          Text(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitiam olestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga",
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(
                                255,
                                117,
                                117,
                                117,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const ExpansionTile(
                        title: Text(
                          'Our Policies',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        childrenPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        children: <Widget>[
                          Text(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitiam olestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga",
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(
                                255,
                                117,
                                117,
                                117,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: Text(
                            "Our staff",
                            style: TextStyle(
                                // height: 1.5,
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: Text(
                            "View All",
                            style: TextStyle(
                                // height: 1.5,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Staff!.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(
                              15.0,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                              child: Image.network(
                                Staff![index].imageUrl,
                                width: size.width * 0.5,
                                // height: size.height ,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                          color: blue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              backgroundColor: blue,
                            ),
                          ),
                          onPressed: () {
                            // staff overview
                          },
                          child: const Text(
                            "Book appointment",
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
                )
              ],
              fullyStretchable: true,
              backgroundColor: Colors.white,
              appBarColor: blue,
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget headerWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      // color: Colors.blue,
      child: Center(
        child: Image.network(
          widget.posts.imageUrl,
          width: size.width * 1,
          height: size.height,
        ),
      ),
    );
  }
}
