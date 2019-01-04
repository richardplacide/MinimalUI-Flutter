import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {

  String imagePath;

  PhotoCard(String imgPath) {
    imagePath = imgPath;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
