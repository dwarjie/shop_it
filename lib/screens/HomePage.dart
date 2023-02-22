import 'package:flutter/material.dart';
import 'package:shop_it/constants/colors.dart';
import 'package:shop_it/widgets/buildCard.dart';
import 'package:shop_it/widgets/buildCategoryCard.dart';
import 'package:shop_it/widgets/buildSearchBar.dart';
import '../widgets/buildAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: ListView(
        children: [
          const HomeBanner(),
          const SizedBox(
            height: 50,
          ),
          // CATEGORY TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'View More',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: primaryOrange),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: primaryOrange,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // CATEGORY CARDS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCategoryCard('assets/img/cat_women.png', 'Women'),
                buildCategoryCard('assets/img/cat_man.png', 'Men'),
                buildCategoryCard('assets/img/cat_kids.png', 'Kids'),
                buildCategoryCard('assets/img/cat_luxury.png', 'Luxury'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // FLASH SALE TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flash Sale',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Explore More',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: primaryOrange),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: primaryOrange,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // FLASH SALE BANNER
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: (MediaQuery.of(context).size.width),
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/img/flash_sale.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // POPULAR BRANDS TITLE
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Popular Brands',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // POPULAR BRANDS CARDS
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(110, 100, 'assets/img/brand_guess.png'),
                buildCard(110, 100, 'assets/img/brand_lacoste.png'),
                buildCard(110, 100, 'assets/img/brand_HM.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: (MediaQuery.of(context).size.width),
          height: 135,
          color: Colors.black,
          child: Image.asset('assets/img/logo.png'),
        ),
        const Positioned(
          bottom: -25,
          left: 0,
          right: 0,
          child: Center(
            child: _SearchBar(),
          ),
        )
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: buildSearchBar(),
      ),
    );
  }
}
