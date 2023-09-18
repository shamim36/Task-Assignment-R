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
  Home({super.key});
  List<String>image=new List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.qA9zQh6fPwYYu4UQXn2AeAAAAA?pid=ImgDet&rs=1");

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Photo Gallery')),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text('Welcome to My Photo Gallery!', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search for photos...',
                border: OutlineInputBorder(gapPadding: 10),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(

              height: 750,
              width: 750,
              child:  GridView.builder(

                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: image.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 4),
                itemBuilder: (context,index){
                  return  Card(
                    elevation: 5,
                    // child: Image.network(image[index],fit: BoxFit.fitWidth),
                    child: Image.network(image[index]),
                  );
                },

                scrollDirection: Axis.vertical,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

