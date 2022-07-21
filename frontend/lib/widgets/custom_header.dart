import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomHeader extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const CustomHeader({this.title, this.subTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 2),
          Text(
            subTitle!,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
