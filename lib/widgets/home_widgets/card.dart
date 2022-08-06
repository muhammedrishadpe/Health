import 'package:flutter/material.dart';

import '../../components/constent.dart';

class PostCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PostCard(
      {required this.image,
      required this.title,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
                    image,
                    width: MediaQuery.of(context).size.width * 1.1,
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
                  title, // posts![0].title,
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
                  description, // posts![0].description,
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
                  width: MediaQuery.of(context).size.width * 0.8,
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
    );
  }
}
