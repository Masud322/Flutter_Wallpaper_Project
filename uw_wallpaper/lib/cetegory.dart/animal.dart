import 'package:first_flutter_app/Home_gallery.dart';
import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/login_page.dart';

void main() {
  runApp(const AnimalPage());
}

class AnimalPage extends StatelessWidget {
  const AnimalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new_apps',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'New_Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/animals/21.jpg',
    title: 'New Year',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/22.jpg',
    title: 'Spring',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/23.jpg',
    title: 'Casual Look',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/24.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/25.jpg',

    title: 'New York',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/26.jpg',

    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/27.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/28.jpg',
    title: 'New York',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/29.jpg',
    title: 'Spring',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/30.jpg',
    title: 'Casual Look',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/31.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/32.jpg',
    title: 'New York',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/33.jpg',
    title: 'New York',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/34.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/35.jpg',
    title: 'New York',

  ),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title:const Center (child: Text('Universal Wallpaper')), 
        ),
        backgroundColor: Colors.lightGreenAccent,
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Gallery',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 12,right: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 2,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ), 
      bottomNavigationBar: const NaviBar(),
    );
        
  }
}
class ImageDetails {
  final String imagePath;
final String title;

  ImageDetails({
    required this.imagePath,
    required this.title,
    
  });
}