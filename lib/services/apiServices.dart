import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<Map> listOfPost() async {
    var url = Uri.parse("https://607a9689bd56a60017ba2d1f.mockapi.io/api/v1/");
    final response = await http.get(url);
    var responseBody = json.decode(response.body);
    return responseBody;
  }

  Future<Map> createPost() async {
    var url = Uri.parse("https://607a9689bd56a60017ba2d1f.mockapi.io/api/v1/");
    final response = await http.post(url);
    var responseBody = json.decode(response.body);
    return responseBody;
  }

  Future<Map> createComment() async {
    var url = Uri.parse("https://607a9689bd56a60017ba2d1f.mockapi.io/api/v1/");
    final response = await http.post(url, body: {
      "user" : "firstName lastName",
      "body" : "some text!",
    });
    var responseBody = json.decode(response.body);
    return responseBody;
  }

}
