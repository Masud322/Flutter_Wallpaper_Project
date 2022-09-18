import 'dart:ui';

import 'package:first_flutter_app/about_page.dart';
import 'package:first_flutter_app/favorite.dart';
import 'package:first_flutter_app/gallery_page.dart';
import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/signup.dart';
import 'package:flutter/material.dart';
class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          
          AppBar(
            
           title: (const Text('Universal Wallpaper')),
           automaticallyImplyLeading: false,

          ),
          
          ListTile(
            leading:const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const MyApp()),
                   
                   );
            },
          ),
          ListTile(
            leading:const Icon(
              Icons.photo,
            ),
            title: const Text('Gallery'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const Gallery_Page()),
                   
                   );
            },
          ),
          
          ListTile(
            leading:const Icon(
              Icons.category,
            ),
            title: const Text('Categories'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const Gallery_Page()),
                   
                   );
            },
          ),
          ListTile(
            leading:const Icon(
              Icons.favorite,
            ),
            title: const Text('Favorite'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const Favorite_1()),
                   
                   );
            },
          ),
          ListTile(
            leading:const Icon(
              Icons.add_a_photo,
            ),
            title: const Text('Add Your Photos'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const SignUp_1()),
                   
                   );
            },
          ),
          
          ListTile(
            leading:const Icon(
              Icons.info,
            ),
            title: const Text('About'),
            onTap: () {
              Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const AboutPage()),
                   
                   );
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                     Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const SignUp_1()),
                   
                   );
                  },
                  icon: const Icon(Icons.app_registration_rounded),
                  
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const SignUp_1()),
                   
                   );
                }, child: Text('Register Here',style: TextStyle(color: Color.fromARGB(255, 0, 140, 255)),))
              ],
            ),
            
          )
        ],
        
      ),

    );
  }
}