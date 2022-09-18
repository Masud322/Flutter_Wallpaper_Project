import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/login_page.dart';
import 'navibar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
    imagePath: 'assets/images/1.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/8.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/6.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/4.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/5.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/6.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/7.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/8.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/9.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/10.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/11.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/12.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/13.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/14.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/11.jpg',
    title: 'DOWNLODE NOW',

  ),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: (const Text('Universal Wallpaper')),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              icon: const Icon(Icons.login),
            ),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.black),
              ),
            )),
          ],
        ),
        
        drawer: const AppDrawer(),
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Search your favorite photos',
                    suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Enter',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    )),
                onChanged: ((value) {}),
              ),
            ),
            
            const SizedBox(
              height: 5,
            ),
            const Text(
              'All Photos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
              
            ),
            Expanded(
              
              child: Container(
                
                margin: const EdgeInsets.only(left: 12,right: 12),
                padding: const EdgeInsets.symmetric(
                
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    
                    //topLeft: Radius.circular(30),
                    //topRight: Radius.circular(30),
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