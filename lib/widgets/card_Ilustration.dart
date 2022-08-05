// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../components/constent.dart';

class CardIlustration extends StatelessWidget {
  final String image;

  final String title;
  final String org;
  final String description;
  final String profile;
  final String name;
  final String videos;
  final String minutes;
  final Color dividerColor;

  const CardIlustration({
    Key? key,
    required this.image,
    required this.title,
    required this.org,
    required this.description,
    required this.profile,
    required this.name,
    required this.videos,
    required this.minutes,
    required this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 500,
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
                      image // posts![0].imageUrl.toString()
                      ,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 15),
                  child: Text(
                    org,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 131, 131)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 0,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                  ),
                  child: Text(
                    description,
                    style: const TextStyle(
                      height: 1.5,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 75, 75, 75),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  thickness: 3,
                  color: dividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 15.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          profile,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            name,
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "$videos vsideos, $minutes minutes",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 134, 134, 134),
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
