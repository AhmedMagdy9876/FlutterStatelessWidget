import 'package:flutter/material.dart';
import 'package:flutter_stateless_widget/labeledTwoImages.dart';

String firstImagePath = "assets/images/puck.jpg";
Uri secondImageUri = Uri.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/603px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LabeledTwoImages(label: "the two images are displayed", firstImagePath: firstImagePath, secondImageUri: secondImageUri),
    );
  }
}
