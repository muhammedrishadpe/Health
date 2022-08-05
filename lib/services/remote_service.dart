import '../models/ad_model.dart';
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
}
