import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deals extends StatelessWidget {
  final String image;
  final String offer;
  final String pts;
  final String month;

  const Deals({
    super.key,
    required this.image,
    required this.offer,
    required this.pts,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 18.0, right: 18.0, bottom: 18.0, top: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: 160,
          height: 230,
          // foregroundDecoration:
          //     const BoxDecoration(color: Color.fromARGB(33, 0, 0, 0)),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: -5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 120,
                    child: Text(
                      offer,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 54, 54, 54),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: -5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    pts,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 54, 54, 54),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: -5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    month,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 54, 54, 54),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
