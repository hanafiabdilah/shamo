import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  Widget input(String title, String text) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: secondaryTextStyle.copyWith(fontSize: 13),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: text,
              hintStyle: primaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: subtitleTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: defaultMargin),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/image_profile.png'),
              ),
            ),
          ),
          input('Name', 'Alex keinnzal'),
          input('Username', '@alexkeinn'),
          input('Email Address', 'alex.kein@gmail.com'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('Edit Profile'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
