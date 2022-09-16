import 'package:first_flutter_app/Home_gallery.dart';
import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class GalleryPage extends StatelessWidget {
   const GalleryPage({Key? key, required String title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextButton(onPressed: (){
           Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const MyApp()),
                   
                   );
          }, child: const Text('Universal Wallpaper',style: TextStyle(color: Colors.black,fontSize: 20),),)
          
          
        ),
      
        
        body: Column(
  children: <Widget>[
     
  
            
    Container(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              alignment: Alignment.center,
              child: const Text('All Photos',style:TextStyle(fontSize: 18)),
            ),
        const Home_Gallery(),
        const NaviBar(),
  ],
)

        
        

        
        );
  }
}