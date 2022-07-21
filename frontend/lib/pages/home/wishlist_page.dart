import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/custom_appbar.dart';
import 'package:shamo/widgets/empty_page.dart';
import 'package:shamo/widgets/wishlist_tile.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  Widget emptyWishlist() {
    return EmptyPage(
      imageUrl: 'assets/images/love_icon.png',
      title: 'You don\'t have dream shoes?',
      subTitle: 'Let\'s find your favorite shoes',
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          children: [
            WishlistTile(
              imageUrl: 'assets/images/shoes.png',
              price: '\$990',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Favorite Shoes'),
        content(),
      ],
    );
  }
}
