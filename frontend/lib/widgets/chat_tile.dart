import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  final String? imageUrl;
  final String? shopName;
  final String? lastChat;
  final String? time;
  const ChatTile(
      {this.imageUrl, this.shopName, this.lastChat, this.time, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl!,
                  width: 54,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shopName!,
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        lastChat!,
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  time!,
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 12),
            Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
