import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomTextButton extends StatelessWidget {
  final onPressed;
  final String? text;
  final double? marginTop;
  final double? paddingHorizontal;
  final bool? isIcon;
  final icon;
  final mainAxis;

  const CustomTextButton(
      {this.onPressed,
      this.text,
      this.marginTop = 30,
      this.paddingHorizontal = 0,
      this.isIcon = false,
      this.icon,
      this.mainAxis = MainAxisAlignment.center,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: marginTop!),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal!),
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: mainAxis!,
          children: [
            Text(
              text!,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            isIcon!
                ? Icon(
                    icon!,
                    color: primaryTextColor,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
