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
    image.add("https://th.bing.com/th/id/OIP.6-NtZcFoUTUD58chsT9jqwAAAA?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.KBME9hFuYbldHWa4ZhL8ngHaEo?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.2382nsmHMTFS98o-ny4PEQHaGd?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.lcPtma6WLMtozodcBXMlXQHaEK?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.0G2TFEz2pA7_88jnrJ7OWwHaEK?pid=ImgDet&rs=1");
    image.add("https://th.bing.com/th/id/OIP.SAUXaI25Jh6zRzfkr8nGDgHaEK?pid=ImgDet&rs=1");

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
              padding: const EdgeInsets.all(15),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 25, mainAxisSpacing: 25),
              itemBuilder: (context,index){
                return  GridTile(
                  footer: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(2),
                    child: Center(
                      child: Text('Photo $index',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('GridView Image $index clicked.'),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 140,
                      child: Image.network(image[index],fit: BoxFit.cover,),

                    ),
                  ),


                );
              },
              scrollDirection: Axis.vertical,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(image[index]),

                  ),
                  title: Text('Photo ${index+1}'),
                  subtitle: Text('Description for Photo ${index+1}'),
                );
              },
            ),

            const SizedBox(height: 12,),

            FloatingActionButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Photos Uploaded Successfully!'),
                  ),
                );
              },
              child: const Icon(Icons.upload_rounded, weight: 10),
            )

          ],
        ),

      ),

    );
  }
}

