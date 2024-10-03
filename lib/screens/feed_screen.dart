import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whenever/providers/post_provider.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<PostProvider>(context, listen: false);
    provider.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostProvider>(context);
    log(provider.posts.toString() ?? 'No posts available');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Whenever'),
        backgroundColor: Colors.green[400],
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: provider.posts.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(provider.posts[index].title,
                  style: const TextStyle(fontSize: 28)),
              subtitle: Text(
                provider.posts[index].body,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
          // Your itemBuilder code here
        },
      ),
    );
  }
}
