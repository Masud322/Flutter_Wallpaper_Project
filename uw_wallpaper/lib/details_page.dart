import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final int index;
  const DetailsPage(
      {
      required this.imagePath,
      required this.title,
      required this.index
      }
      );

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universal Wallpaper'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo ${widget.index}',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 140,

              child: Column(
                
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Center(
                      child: Column(
                        
                        children: <Widget>[
                          
                          TextButton(onPressed: (){

                          }, child: Text(
                            widget.title,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 67, 228, 27),
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),
                           ),
                          ), 
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NaviBar(),
    );
  }

  // FlatButton({required Null Function() onPressed, required EdgeInsets padding, required MaterialAccentColor color, required Text child}) {}
}