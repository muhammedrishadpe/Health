// ignore_for_file: body_might_complete_normally_nullable, duplicate_ignore

import 'package:health/models/get_event.dart';

import '../models/ad_model.dart';

import '../models/get_staff.dart';

import 'package:http/http.dart' as http;

class RemoteService {
  // ignore: body_might_complete_normally_nullable
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://run.mocky.io/v3/2e8319cb-edf5-4a13-97a0-d281d2e7c53a');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }

  //our staff
  Future<List<Getstaff>?> getStaff() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://run.mocky.io/v3/d0c3303f-6f6b-496f-9024-671a3c995c5e');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return getstaffFromJson(json);
    }
  }

  Future<List<GetEvent>?> getEvent() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://run.mocky.io/v3/0f0d9fc0-9c92-401f-bcfa-87432b25e897');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return getEventFromJson(json);
    }
  }
}
