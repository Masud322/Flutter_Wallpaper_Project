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
    imagePath: 'assets/images/abstract/2.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/21.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/57.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/61.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/80.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/81.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/91.jpg',
    title: 'DOWNLODE NOW',
  ),
  
  ImageDetails(
    imagePath: 'assets/images/space/001.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/121.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/17.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/11.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/12.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/83.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/083.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/84.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/084.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/85.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/13.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/14.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/18.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/22.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/23.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/16.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/4.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/5.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/6.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/7.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/8.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/abstract/9.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/33.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/34.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/35.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/36.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/41.jpg',
    title: 'DOWNLODE NOW',

  ),
  
  ImageDetails(
    imagePath: 'assets/images/animals/24.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/25.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/26.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/27.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/28.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/29.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/30.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/31.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/32.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  
  ImageDetails(
    imagePath: 'assets/images/animals/42.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/43.jpg',
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
  ImageDetails(
    imagePath: 'assets/images/travel/122.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/123.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/124.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/animals/44.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/animals/21.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/051.jpeg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/52.jpeg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/052.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/53.jpeg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/053.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/052.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/061.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/62.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/062.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/63.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/063.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/64.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/54.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/55.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/055.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/56.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/57.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/car/58.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/car/59.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/car/60.jpg',
    title: 'DOWNLODE NOW',
  ),
  
  ImageDetails(
    imagePath: 'assets/images/food/064.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/65.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/065.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/66.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/67.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/food/68.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/food/69.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/food/70.jpg',
    title: 'DOWNLODE NOW',

  ),ImageDetails(
    imagePath: 'assets/images/games/78.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/77.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/76.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/games/075.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/75.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/074.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/games/74.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/games/073.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/games/73.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/072.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/games/72.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/games/071.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/games/71.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/081.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/82.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/082.jpg',
    title: 'DOWNLODE NOW',
  ),
  
  ImageDetails(
    imagePath: 'assets/images/movies/085.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/86.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/87.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/88.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/movies/89.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/movies/90.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/091.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/92.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/092.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/93.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/093.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/95.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/095.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/96.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/97.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/98.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/100.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/91.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/nature/91.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/nature/91.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/002.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/003.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/004.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/005.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/101.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/102.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/103.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/104.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/105.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/133.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/134.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/135.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/136.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/106.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/107.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'assets/images/space/108.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/space/109.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/space/110.jpg',
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
    imagePath: 'assets/images/travel/125.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/126.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/127.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'assets/images/travel/128.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/129.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/130.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'assets/images/travel/132.jpg',
    title: 'DOWNLODE NOW',
  ),
  
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 154, 248, 47),
        appBar: AppBar(
          title: (const Text('Universal Wallpapers')),
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
              height: 7,
              
            ),
            Expanded(
              
              child: Container(
                
                margin: const EdgeInsets.only(left: 12,right: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 2,
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