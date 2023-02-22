import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/buildCard.dart';
import '../widgets/buildCategoryCard.dart';
import '../widgets/buildSearchBar.dart';
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
          ),
          const SizedBox(
            height: 20,
          ),
          // BANNER FEET
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                buildCard(
                  (MediaQuery.of(context).size.width),
                  230,
                  'assets/img/banner_feet.png',
                ),
                const _feetCard()
              ],
            ),
          ),
          const SizedBox(
            height: 170,
          ),
          // NEW ARRIVAL TITLE
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'New Arrivals',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // NEW ARRIVALS CARD
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    arrivalCard(
                      'Headphones',
                      '₱3,695',
                      'assets/img/new_headphone.png',
                    ),
                    arrivalCard(
                      'T-Shirt',
                      '₱3,695',
                      'assets/img/new_shirt.png',
                    ),
                    arrivalCard(
                      'Apple',
                      '₱28,575',
                      'assets/img/new_watch.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    arrivalCard(
                      'PlayStation',
                      '₱1,500',
                      'assets/img/new_controller.png',
                    ),
                    arrivalCard(
                      'Asus',
                      '₱24,850',
                      'assets/img/new_tv.png',
                    ),
                    arrivalCard(
                      'Nike',
                      '₱2,345',
                      'assets/img/new_short.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column arrivalCard(String title, String price, String imagePath) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 150,
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: cardGray,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(imagePath),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
        Text(
          price,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: primaryOrange),
        )
      ],
    );
  }
}

class _feetCard extends StatelessWidget {
  const _feetCard();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -150,
      left: 0,
      right: 0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            color: cardGray,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Text(
                      "Trending Products This Week",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                    subtitle: Text(
                      "Tell us what you like and we'll suggest shops from our community.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(primaryOrange),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Explore',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
