import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final bool? automaticallyImplyLeading;

  const CustomAppBar(
      {this.automaticallyImplyLeading = false, this.title = 'Title', Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading!,
      title: Text(
        title!,
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }
}
