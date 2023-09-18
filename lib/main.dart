import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 06',
      color: Colors.white,
      home: Home(),

    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Photo Gallery')),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text('Welcome to My Photo Gallery!', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for photos...',
                border: OutlineInputBorder(gapPadding: 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}

