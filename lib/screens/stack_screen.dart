import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        color: Colors.green,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(color: Colors.red, width: 100, height: 100),
                    Positioned(
                      top: 5,
                      left: 55,
                      child:
                          Container(color: Colors.blue, width: 50, height: 50),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
