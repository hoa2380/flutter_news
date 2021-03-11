import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchWpPosts() async {
  final response = await http.get(
      "https://design.bpotech.com.vn/elodichvu/index.php/wp-json/wp/v2/posts",
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
Future<List> fetchWpPostsCategory() async {
  final response = await http.get(
      "https://design.bpotech.com.vn/elodichvu/wp-json/wp/v2/categories/",
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}