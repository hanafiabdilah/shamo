import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WishlistTile extends StatelessWidget {
  final String? imageUrl;
  final String? price;

  const WishlistTile({this.imageUrl, this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(
              imageUrl!,
              width: 60,
              height: 60,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(height: 2),
                Text(
                  price!,
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/button_wishlist_active.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
