import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatBubble extends StatelessWidget {
  final bool? isSender;
  final String? chat;
  final bool? hasProduct;

  const ChatBubble(
      {this.isSender = true, this.chat, this.hasProduct = false, Key? key})
      : super(key: key);

  Widget productPreview() {
    return Container(
      width: 230,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSender! ? backgroundColor5 : backgroundColor4,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSender! ? 12 : 0),
          topRight: Radius.circular(isSender! ? 0 : 12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/shoes.png',
                  width: 70,
                  height: 70,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURT VISION 2.0 SHOES',
                      style: primaryTextStyle,
                    ),
                    SizedBox(height: 4),
                    Text(
                      '\$92',
                      style: priceTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Add to Chart', style: purpleTextStyle),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: backgroundColor5, fontWeight: medium),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct! ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender! ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isSender! ? backgroundColor5 : backgroundColor4,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender! ? 12 : 0),
                      topRight: Radius.circular(isSender! ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    chat!,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
