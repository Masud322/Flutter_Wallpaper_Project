import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/gallery_page.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SportsPage());
}

class SportsPage extends StatelessWidget {
  const SportsPage({Key? key}) : super(key: key);

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
    imagePath: 'assets/images/sports/006.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/007.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/008.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/009.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/010.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/sports/111.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/112.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/113.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/sports/114.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/sports/115.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/sports/116.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/117.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/118.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/sports/119.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/sports/120.jpg',
    title: 'DOWNLODE NOW',

  ),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: (const Text('Universal Wallpaper')), 
          leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const Gallery_Page()),
                   
                   );
          },
        ), 
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
              '.....Sports.....',
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
