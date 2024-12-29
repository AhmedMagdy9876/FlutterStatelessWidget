import 'package:flutter/material.dart';

class LabeledTwoImages extends StatelessWidget {
  const LabeledTwoImages(
      {super.key,
      required this.label,
      required this.firstImagePath,
      required this.secondImageUri});

  // fields for the images' paths and label
  final String firstImagePath;
  final Uri secondImageUri;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar contains the title
        appBar: AppBar(
          title: Text('My First Project'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0), // padding around page edges
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10, // spacing between the images and the label
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10, // spacing between images
                    children: <Widget>[
                      // get first image from assets
                      Expanded(child: Image.asset(firstImagePath)),
                      // get second image from uri
                      Expanded(child: Image.network(secondImageUri.toString())),
                    ],
                  ),
                ),
                // the label text with styling
                Text(label,
                    style: TextStyle(
                        fontFamily: "Suwannaphum",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple.shade900)),
              ],
            ),
          ),
        ));
  }
}
