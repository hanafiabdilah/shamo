import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomFooter extends StatelessWidget {
  final String? text;
  final String? textButton;
  final onTap;

  const CustomFooter({this.text, this.textButton, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text!,
            style: subtitleTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: onTap!,
            child: Text(
              textButton!,
              style: purpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
