import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String image;
  final String title;
  final String descri;
  final String point;

  const Items(
      {required this.image,
      required this.descri,
      required this.point,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 45,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            // mainAxisAlignment: M,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                descri,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromARGB(255, 172, 172, 172),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                point,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromARGB(255, 172, 172, 172),
                ),
              ),
            ],
          )
        ]);
  }
}
