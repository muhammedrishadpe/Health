import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

import '../../components/constent.dart';

import 'widgets/chart_widget.dart';
import 'widgets/deals.dart';
import 'widgets/items.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

const double width = 300.0;
const double height = 60.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;

class _ProfileState extends State<Profile> {
  bool onChange = false;
  double? xAlign;
  Color? loginColor;
  Color? signInColor;

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size.width;
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
            headerWidget:
                Container(color: const Color.fromARGB(255, 237, 237, 237)),
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

                  const SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: const [
                              Text(
                                "Last",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                "View All",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Items(
                                    title: 'Bookworm',
                                    descri: 'Read 7 articels',
                                    image: 'assets/icons/star.png',
                                    point: '(10 pts)',
                                  ),
                                  Items(
                                    descri: 'Read 7 articels',
                                    image: 'assets/icons/star(1).png',
                                    point: '(10 pts)',
                                    title: 'Bookworm',
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Items(
                                    descri: 'Compelete 3',
                                    image: 'assets/icons/star(2).png',
                                    point: 'screening (30)',
                                    title: 'Test Taker',
                                  ),
                                  Items(
                                    descri: 'You have',
                                    image: 'assets/icons/star(3).png',
                                    point: 'registerd! (10)',
                                    title: 'Nice!',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Text(
                                "This month deals",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Deals(
                                      image:
                                          "https://images.unsplash.com/photo-1525904097878-94fb15835963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                      offer: "1 SMARTSHAKE",
                                      pts: "38 pts",
                                      month: "this month",
                                    ),
                                    Deals(
                                      image:
                                          "https://images.unsplash.com/photo-1510172951991-856a654063f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                      offer: "50% DISCOUNT IN BOOKSTORE",
                                      pts: "105 pts",
                                      month: "this month",
                                    ),
                                    Deals(
                                      image:
                                          "https://images.unsplash.com/photo-1571779719707-0f24f62ab4fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1121&q=80",
                                      offer: "30% DISCOUNT FOR FACEWASHES",
                                      pts: "68 pts",
                                      month: "this month",
                                    ),
                                    Deals(
                                      image:
                                          "https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
                                      offer: "HEALTHY FRUITS",
                                      pts: "80 pts",
                                      month: "this month",
                                    ),
                                    Deals(
                                      image:
                                          "https://images.unsplash.com/photo-1517142089942-ba376ce32a2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                      offer: "COMBO SHAKE",
                                      pts: "138 pts",
                                      month: "this month",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )

//Coming soon page

                  // Container(
                  //   padding: const EdgeInsets.all(3),
                  //   margin: const EdgeInsets.all(20),
                  //   width: 320,
                  //   height: 42,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(30),
                  //     color: const Color.fromARGB(255, 233, 233, 233),
                  //   ),
                  //   child: Center(
                  //     child: Container(
                  //       width: width,
                  //       height: height,
                  //       decoration: const BoxDecoration(
                  //         // color: Colors.grey,
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(50.0),
                  //         ),
                  //       ),
                  //       child: Stack(
                  //         children: [
                  //           AnimatedAlign(
                  //             alignment: Alignment(xAlign!, 0),
                  //             duration: const Duration(milliseconds: 300),
                  //             child: Container(
                  //               width: width * 0.5,
                  //               height: height,
                  //               decoration: BoxDecoration(
                  //                 color: blue,
                  //                 borderRadius: const BorderRadius.all(
                  //                   Radius.circular(50.0),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               setState(() {
                  //                 xAlign = loginAlign;
                  //                 loginColor = selectedColor;

                  //                 signInColor = normalColor;
                  //               });
                  //             },
                  //             child: Align(
                  //               alignment: const Alignment(-1, 0),
                  //               child: Container(
                  //                 width: width * 0.5,
                  //                 // color: Colors.transparent,
                  //                 alignment: Alignment.center,
                  //                 child: Text(
                  //                   'ACHIEVEMENTS',
                  //                   style: TextStyle(
                  //                     color: loginColor,
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               setState(() {
                  //                 xAlign = signInAlign;
                  //                 signInColor = selectedColor;

                  //                 loginColor = normalColor;
                  //               });
                  //             },
                  //             child: Align(
                  //               alignment: const Alignment(1, 0),
                  //               child: Container(
                  //                 width: width * 0.5,
                  //                 // color: Color.fromARGB(232, 24, 31, 229),
                  //                 alignment: Alignment.center,
                  //                 child: Text(
                  //                   'SCREENING',
                  //                   style: TextStyle(
                  //                     color: signInColor,
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // xAlign != 1.0
                  // ? SizedBox(
                  //     // color: Colors.red,
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(15.0),
                  //           child: Row(
                  //             children: const [
                  //               Text(
                  //                 "Last",
                  //                 style: TextStyle(
                  //                     color: Colors.black,
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.w600),
                  //               ),
                  //               Spacer(),
                  //               Text(
                  //                 "View All",
                  //                 style: TextStyle(
                  //                     color: Colors.black,
                  //                     fontSize: 15,
                  //                     fontWeight: FontWeight.w400),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //         // const SizedBox(
                  //         //   height: 20,
                  //         // ),
                  //         Column(
                  //           children: [
                  //             Padding(
                  //               padding: const EdgeInsets.all(15.0),
                  //               child: Row(
                  //                 crossAxisAlignment:
                  //                     CrossAxisAlignment.center,
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceAround,
                  //                 children: const [
                  //                   Items(
                  //                     title: 'Bookworm',
                  //                     descri: 'Read 7 articels',
                  //                     image: 'assets/icons/star.png',
                  //                     point: '(10 pts)',
                  //                   ),
                  //                   Items(
                  //                     descri: 'Read 7 articels',
                  //                     image: 'assets/icons/star(1).png',
                  //                     point: '(10 pts)',
                  //                     title: 'Bookworm',
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //             Padding(
                  //               padding: const EdgeInsets.all(15.0),
                  //               child: Row(
                  //                 crossAxisAlignment:
                  //                     CrossAxisAlignment.center,
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceAround,
                  //                 children: const [
                  //                   Items(
                  //                     descri: 'Compelete 3',
                  //                     image: 'assets/icons/star(2).png',
                  //                     point: 'screening (30)',
                  //                     title: 'Test Taker',
                  //                   ),
                  //                   Items(
                  //                     descri: 'You have',
                  //                     image: 'assets/icons/star(3).png',
                  //                     point: 'registerd! (10)',
                  //                     title: 'Nice!',
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         Column(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             const Padding(
                  //               padding: EdgeInsets.all(18.0),
                  //               child: Text(
                  //                 "This month deals",
                  //                 style: TextStyle(
                  //                   fontSize: 20,
                  //                   color: Colors.black,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //             SingleChildScrollView(
                  //               scrollDirection: Axis.horizontal,
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(left: 5.0),
                  //                 child: Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: const [
                  //                     Deals(
                  //                       image:
                  //                           "https://images.unsplash.com/photo-1525904097878-94fb15835963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  //                       offer: "1 SMARTSHAKE",
                  //                       pts: "38 pts",
                  //                       month: "this month",
                  //                     ),
                  //                     Deals(
                  //                       image:
                  //                           "https://images.unsplash.com/photo-1510172951991-856a654063f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  //                       offer: "50% DISCOUNT IN BOOKSTORE",
                  //                       pts: "105 pts",
                  //                       month: "this month",
                  //                     ),
                  //                     Deals(
                  //                       image:
                  //                           "https://images.unsplash.com/photo-1571779719707-0f24f62ab4fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1121&q=80",
                  //                       offer:
                  //                           "30% DISCOUNT FOR FACEWASHES",
                  //                       pts: "68 pts",
                  //                       month: "this month",
                  //                     ),
                  //                     Deals(
                  //                       image:
                  //                           "https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
                  //                       offer: "HEALTHY FRUITS",
                  //                       pts: "80 pts",
                  //                       month: "this month",
                  //                     ),
                  //                     Deals(
                  //                       image:
                  //                           "https://images.unsplash.com/photo-1517142089942-ba376ce32a2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  //                       offer: "COMBO SHAKE",
                  //                       pts: "138 pts",
                  //                       month: "this month",
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   )
                  // : Container(
                  //     child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: const [
                  //           Icon(Icons.heart_broken),
                  //           Spacer(),
                  //           Icon(Icons.theaters_outlined),
                  //         ],
                  //       ),
                  //       Container(
                  //         width: 400,
                  //         height: 130,
                  //         color: Colors.white,
                  //         child: const Chart(),
                  //       ),
                  // ],
                  // ))
                ],
              )
            ],
            fullyStretchable: true,
            backgroundColor: Colors.white,
            appBarColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
