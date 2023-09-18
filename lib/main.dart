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
  List<String>image=List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    image.add("https://pleatedjeans.files.wordpress.com/2010/06/iron-man-suit.jpg");
    image.add("https://th.bing.com/th/id/OIP.unzpk7eelbC68jRXhVZffwHaHa?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.unzpk7eelbC68jRXhVZffwHaHa?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.unzpk7eelbC68jRXhVZffwHaHa?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.unzpk7eelbC68jRXhVZffwHaHa?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.unzpk7eelbC68jRXhVZffwHaHa?pid=ImgDet&rs=1");

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

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 4),
              itemBuilder: (context,index){
                return  Container(
                  decoration: BoxDecoration(
                    image: new DecorationImage(image: new NetworkImage(image[index]),
                    fit: BoxFit.fill,
                    ),

                  ),
                  child: Card(
                    // elevation: 5,
                    // child: Image.network(image[index],fit: BoxFit.fitWidth),
                    child: TextButton(onPressed: () {  },
                      style: TextButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Colors.transparent,
                        // elevation: 0,

                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(image[index]),
                        const SizedBox(
                          height: 4,
                        ),
                        Text('Photo $index',style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    ),
                  ),
                );
              },
              scrollDirection: Axis.vertical,
            ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage:
              NetworkImage(image[0]),
              backgroundColor: Colors.transparent,
            ),
            title: const Text('Photo 1'),
            subtitle: const Text('Description for Photo 1'),
          ),
            ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage:
              NetworkImage(image[1]),
              backgroundColor: Colors.transparent,
            ),
            title: const Text('Photo 2'),
            subtitle: const Text('Description for Photo 2'),
          ),
            ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage:
              NetworkImage(image[2]),
              backgroundColor: Colors.transparent,
            ),
            title: const Text('Photo 3'),
            subtitle: const Text('Description for Photo 3'),
          ),

          ],
        ),
      ),
    );
  }
}

