import 'package:first_flutter_app/favorite.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

import 'gallery.dart';
class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int index = 0;
  final screen= [
    MyApp(),
    GalleryPage(title: '',),
    Favorite_1(),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  NavigationBarTheme(data: const NavigationBarThemeData(
     indicatorColor: Colors.black,
     labelTextStyle: MaterialStatePropertyAll(
      TextStyle(
        fontSize: 14,fontWeight: FontWeight.w500
      ),
      ),
    ),
     child:  NavigationBar(
      height: 60,
      backgroundColor: Colors.amber,
      selectedIndex: index,
      onDestinationSelected: (index) =>
      setState(() => this.index = index),
      destinations:  const [
        NavigationDestination(
          icon: Icon(Icons.home,color: Colors.white,),
         label: 'Home'),
      
         NavigationDestination(
          icon: Icon(Icons.photo_library,color: Colors.white,),
         label: 'Gallery'),
         NavigationDestination(
          icon: Icon(Icons.favorite,color: Colors.white,),
         label: 'Favorite'),
      ],
     
    ),
    
    ),
    );
  }
}