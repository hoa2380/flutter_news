import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchWpPosts() async {
  final response = await http.get(
      "https://design.bpotech.com.vn/elodichvu/index.php/wp-json/wp/v2/posts",
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

fetchWpPostImageUrl(url) async {
  final response = await http.get(url, headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

Future<List> fetchCategories(String id) async {
  Map<String, dynamic> params = {"parent": id};

  String query = Uri(queryParameters: params).query;
  var requestUrl =
      "https://design.bpotech.com.vn/elodichvu/wp-json/wp/v2/categories" +
          "?" +
          query;
  final response = await http.get(requestUrl);
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

fetchAbout() async {
  final response = await http.get(
      "https://design.bpotech.com.vn/elodichvu/wp-json/wp/v2/pages/75",
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}