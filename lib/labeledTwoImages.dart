import 'package:flutter/material.dart';

class LabeledTwoImages extends StatelessWidget {
  const LabeledTwoImages(
      {super.key,
      required this.label,
      required this.firstImagePath,
      required this.secondImageUri});

  final String firstImagePath;
  final Uri secondImageUri;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First Project'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: <Widget>[
                    Expanded(child: Image.asset(firstImagePath)),
                    Expanded(child: Image.network(secondImageUri.toString())),
                  ],
                ),
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
