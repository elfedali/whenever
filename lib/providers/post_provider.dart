import 'package:flutter/material.dart';
import 'package:whenever/models/post_model.dart';
import 'package:whenever/services/post_service.dart';

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  // user postservice to fetch posts
  fetchPosts() async {
    final posts = await PostService().fetchPosts();
    _posts = posts.map((post) => Post.fromJson(post)).toList();
    notifyListeners();
  }

  void addPost(Post post) {
    _posts.add(post);
    notifyListeners();
  }

  void removePost(Post post) {
    _posts.remove(post);
    notifyListeners();
  }

  void updatePost(int index, Post post) {
    _posts[index] = post;
    notifyListeners();
  }
}
