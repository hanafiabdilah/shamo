import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';
import 'package:shamo/widgets/custom_appbar.dart';
import 'package:shamo/widgets/empty_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  Widget emptyChat() {
    return EmptyPage(
      imageUrl: 'assets/images/headset.png',
      title: 'Opss no message yet?',
      subTitle: 'You have never done a transaction',
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            ChatTile(
              imageUrl: 'assets/images/profile_logo.png',
              shopName: 'Shoe Shop',
              lastChat: 'Hai, tes tes stet tests test stes tset',
              time: 'Now',
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
        CustomAppBar(title: 'Message Support'),
        content(),
      ],
    );
  }
}
