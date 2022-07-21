import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EmptyPage extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final String? textButton;
  final bool? button2;

  const EmptyPage(
      {this.imageUrl,
      this.title,
      this.subTitle,
      this.textButton = 'Explore Stroe',
      this.button2 = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageUrl!, width: 80),
            SizedBox(height: 20),
            Text(
              title!,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 12),
            Text(
              subTitle!,
              style: secondaryTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 44,
              width: 196,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  textButton!,
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
              ),
            ),
            button2! ? SizedBox(height: 12) : SizedBox(),
            button2!
                ? Container(
                    height: 44,
                    width: 196,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 10,
                        ),
                        backgroundColor: Color(0xff39374B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'View My Order',
                        style: TextStyle(
                          color: Color(0xffB7B6BF),
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/cart', (route) => false);
                      },
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
