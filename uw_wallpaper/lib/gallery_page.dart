import 'dart:html';

import 'package:first_flutter_app/Home_gallery.dart';
import 'package:first_flutter_app/cetegory.dart/animal.dart';
import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/login_page.dart';

import 'home_page.dart';
import 'navibar.dart';

void main() {
  runApp(const Gallery_Page());
}

class Gallery_Page extends StatelessWidget {
  const Gallery_Page({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title:const Center (child: Text('Universal Wallpaper')), 
        ),
        backgroundColor: Colors.lightGreenAccent,
        body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Text(
              'Gallery',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black, 
              ),
              textAlign: TextAlign.center,
            ),
            
            
             
                GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Animal',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Birds',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Car & Bikes',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Food',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Games',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Movies',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Nature',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Sports',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Space',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AnimalPage()),
                   
                   );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 12,right: 12,top: 3),
                  height: 140,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/6.jpg'),fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: const Center(
                    child: Text('Travel',style: TextStyle(color: Colors.black,fontSize: 25),),
                   )
                   
                  ),
              ),
              
            
              
                
               
              
              
          ]
          
            )
          
        ),
      );
      
    
        
  }
}