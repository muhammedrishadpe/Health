// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:health/components/constent.dart';
import 'package:health/screens/counselingReading/reading_view.dart';
import 'package:health/widgets/home_widgets/card.dart';

import '../../models/ad_model.dart';
import '../../services/remote_service.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
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
    final size = MediaQuery.of(context).size;
    return isLoaded
        ? SafeArea(
            child: SingleChildScrollView(
              // physics: const ScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: size.width * 0.92,
                      height: 140,
                      decoration: BoxDecoration(
                          color: blue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 20,
                        ),
                        child: Text.rich(
                          TextSpan(
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                            text: 'If you need urgent help, check this',
                            children: <InlineSpan>[
                              TextSpan(
                                text: ' list of emergency resources',
                                style: TextStyle(color: yellow),
                              ),
                              const TextSpan(
                                text: '.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: posts!.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: PostCard(
                            image: posts![index].imageUrl,
                            title: posts![index].title,
                            description: posts![index].description,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ReadingView(
                                    posts: posts![index],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
