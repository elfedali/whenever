import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> posts = List.generate(20, (index) => faker.person.name());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whenever'),
        backgroundColor: Colors.green[300],
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index]),
          );
        },
      ),
    );
  }
}
