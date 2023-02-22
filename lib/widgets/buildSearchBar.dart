import 'package:flutter/material.dart';
import '../constants/colors.dart';

TextField buildSearchBar() {
  return const TextField(
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        color: primaryGray,
      ),
      border: InputBorder.none,
      hintText: 'Search',
      hintStyle: TextStyle(
        color: primaryGray,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
