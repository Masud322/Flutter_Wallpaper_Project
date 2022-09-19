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
  bool _hasBeenPressed = false;
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
                    //borderRadius: const BorderRadius.only(
                        //bottomLeft: Radius.circular(30),
                        //bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
           Expanded(child: 
           Container(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Container(
                  
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child:Center(
                    child: TextButton(onPressed: (){

                    }, child: Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                           ),
                      ),
                  ) 
                ),
                Padding(padding:EdgeInsets.all(5)),
                Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: IconButton(icon: Icon(Icons.favorite_sharp),
                  //color: Colors.white,
                  color: _hasBeenPressed ? Color.fromARGB(255, 255, 17, 1) : Colors.white,
                  onPressed: () => {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                })
              },
                  )
                ),
              ],
            ),
           ),
           
           )
          ],
        ),
      ),
      
      bottomNavigationBar: const NaviBar(),
    );
  }

  // FlatButton({required Null Function() onPressed, required EdgeInsets padding, required MaterialAccentColor color, required Text child}) {}
}