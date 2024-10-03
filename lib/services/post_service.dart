import 'dart:convert';

import 'package:http/http.dart' as http;

class PostService {
  final String baseUrl = '192.168.11.104:3000';

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.http(baseUrl, '/api/posts'));

    if (response.statusCode == 200) {
      /* print(response.body); */
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
