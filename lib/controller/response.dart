import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie_model.dart';

class GettingApi extends GetxController {
  getResponse() async {
    List<Movie> data = [];
    var url = Uri.parse(
        'https://66dd5eb9f7bcc0bbdcddee6f.mockapi.io/api/movie/movies');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      for (var i in jsonResponse) {
        data.add(Movie.fromJson(i));
      }
    } else {
      print(response.statusCode);
    }
  }
}
