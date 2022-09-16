import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final String photographer;
  final String price;
  final String details;
  final int index;
  const DetailsPage(
      {
      required this.imagePath,
      required this.title,
      required this.photographer,
      required this.price,
      required this.details,
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
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo${widget.index}',
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
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'By ${widget.photographer}',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          widget.price,
                          style: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.details,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          color: Colors.lightBlueAccent,
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          color: Colors.lightBlueAccent,
                          child: const Text(
                            'Buy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton({required Null Function() onPressed, required EdgeInsets padding, required MaterialAccentColor color, required Text child}) {}
}