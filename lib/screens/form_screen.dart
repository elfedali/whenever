import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter something',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the button press
                print('Input: ${_controller.text}');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
