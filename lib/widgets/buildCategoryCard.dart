import 'package:flutter/material.dart';
import 'package:shop_it/constants/colors.dart';

SizedBox buildCategoryCard(String imgPath, String cardText) {
  return SizedBox(
    width: 80,
    child: Column(
      children: [
        Container(
          width: 80,
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: cardGray,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            imgPath,
          ),
        ),
        Text(
          cardText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}
