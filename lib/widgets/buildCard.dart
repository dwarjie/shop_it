import 'package:flutter/material.dart';

Container buildCard(double width, double height, String imgPath) {
  return Container(
    width: width,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage(imgPath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
