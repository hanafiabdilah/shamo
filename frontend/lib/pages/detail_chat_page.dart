import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: false,
      title: Row(
        children: [
          Image.asset(
            'assets/images/chat_online.png',
            width: 50,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoe Shop',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                'Online',
                style: secondaryTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget productPreview() {
    return Container(
      padding: EdgeInsets.all(10),
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/shoes.png',
              width: 54,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COURT VISION TES TES TES',
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  '\$88',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/exit_button.png',
            width: 22,
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Image.asset(
                'assets/images/send_button.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        ChatBubble(
          chat: 'Hi, This item is still availbale?',
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          chat: 'Good night, This item is only available in size 42 and 43',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: header(),
        preferredSize: Size.fromHeight(70),
      ),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
