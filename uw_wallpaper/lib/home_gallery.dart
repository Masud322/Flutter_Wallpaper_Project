import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';

class Home_Gallery extends StatefulWidget {
  const Home_Gallery({super.key});

  @override
  State<Home_Gallery> createState() => _Home_GalleryState();
}

class _Home_GalleryState extends State<Home_Gallery> {
  List<String> images = [
    "assets/images/1.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/1.jpg",
    "assets/images/4.jpg",
    "assets/images/1.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/1.jpg",
    "assets/images/4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePreview(imageLocation: images[index], tag: images[index]),));
          },
            child: Hero(
                tag: images[index],
                child: Image.asset(images[index], fit: BoxFit.cover)));
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
    ));
  }
}

class ImagePreview extends StatelessWidget {
  final String imageLocation;
  final String tag;
  const ImagePreview(
      {super.key, required this.imageLocation, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: tag, child: Image.asset(imageLocation,));
  }
}
