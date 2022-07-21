import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ListItem extends StatelessWidget {
  final String? imageUrl;
  final String? productName;
  final String? price;
  final String? item;

  const ListItem(
      {this.imageUrl, this.productName, this.price, this.item, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl!),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName!,
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                Text(
                  price!,
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Text(
            item! == '1' ? item! + ' Item' : item! + ' Items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
