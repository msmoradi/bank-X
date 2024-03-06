import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String imagePath;

  const AppCard({super.key, 
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 269 / 425.6,
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.fill, // use this
      ),
    );
  }
}
