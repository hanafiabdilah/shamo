import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductPage extends StatefulWidget {
  static List images = [
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png'
  ];

  static List familiarShoes = [
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png',
    'assets/images/shoes.png'
  ];

  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  static int currentIndex = 0;
  static bool? isWishlist = false;

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/success_icon.png',
                    width: 100,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hurray :)',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Item addedd successfully',
                    style: secondaryTextStyle,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      child: Text(
                        'View My Cart',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : subtitleTextColor,
        ),
      );
    }

    Widget familiarShoesCart(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CarouselSlider(
            items: ProductPage.images
                .map(
                  (image) => Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ProductPage.images.map((image) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor1,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondaryTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishlist = !isWishlist!;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: isWishlist! == false
                              ? secondaryColor
                              : alertColor,
                          content: Text(
                            isWishlist! == false
                                ? 'Has been added to the Whislist'
                                : 'Has been removed from the Wishlist',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      isWishlist!
                          ? 'assets/images/button_wishlist.png'
                          : 'assets/images/button_wishlist_active.png',
                      width: 46,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price starts from',
                      style: primaryTextStyle,
                    ),
                    Text(
                      '\$334',
                      style: priceTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Desciption',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Sit reprehenderit ipsum adipisicing qui ut sint eu est exercitation non. Nulla nulla qui cillum officia minim id non fugiat labore velit adipisicing duis. Ullamco elit duis labore minim cupidatat elit enim laborum cillum amet minim officia. Amet ullamco reprehenderit cupidatat commodo mollit aliquip velit elit cillum tempor',
                      style: subtitleTextStyle.copyWith(fontWeight: light),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Familiar Shoes',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    ),
                    SizedBox(height: 12),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ProductPage.familiarShoes
                            .map(
                              (image) => familiarShoesCart(image),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      );
    }

    Widget bottomNav() {
      return Container(
        height: 100,
        color: backgroundColor1,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail-chat');
              },
              child: Image.asset(
                'assets/images/button_chat.png',
                width: 54,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 54,
                child: TextButton(
                  onPressed: () {
                    showSuccessDialog();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Add to Chart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryTextColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
      bottomNavigationBar: bottomNav(),
    );
  }
}
