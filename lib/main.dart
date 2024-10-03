import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whenever/providers/post_provider.dart';
import 'package:whenever/screens/feed_screen.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Whenever',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}

// ###################################################
class Example1 extends StatelessWidget {
  const Example1({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 300,
                child: ListView(
                  children: const [
                    ListTile(title: Text(("A"))),
                    ListTile(title: Text(("B"))),
                    ListTile(title: Text(("C"))),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text("This is the best sport gym",
                    style: TextStyle(fontSize: 20)),
              ),
              Image.asset("assets/images/pexels-pixabay-161573.jpg"),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black,
                height: 350,
                child: Image.network(
                  "https://images.pexels.com/photos/1143754/pexels-photo-1143754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  fit: BoxFit.cover,
                ),
              ),
              const Text('This is the best sport gym',
                  style: TextStyle(fontSize: 20)),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  child: const Text(
                    'haha are the worst',
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 50, height: 40, color: Colors.amber),
                    Container(width: 50, height: 80, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 60, color: Colors.blue)
                  ],
                ),
              ),
              Container(
                color: Colors.green[100],
                padding: const EdgeInsets.all(8),
                height: 66,
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Whenever', style: TextStyle(fontSize: 20)),
                            Text("This is the best sport gym",
                                style: TextStyle(fontSize: 12)),
                          ],
                        )),
                    const Spacer(),
                    const Icon(Icons.access_alarm),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
