import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 16,
          icon: SvgPicture.asset('assets/icons/bar_burger.svg'),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 16,
          icon: SvgPicture.asset('assets/icons/bar_cart.svg'),
        )
      ],
    ),
  );
}
