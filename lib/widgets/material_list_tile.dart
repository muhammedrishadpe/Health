import 'package:flutter/material.dart';

class MaterialsListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  const MaterialsListTile({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14.0,
        right: 14.0,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 90,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                imageUrl,
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
                Expanded(
                  child: Text(
                    title,
                    maxLines: 2,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 134, 134, 134),
                        fontSize: 14),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
