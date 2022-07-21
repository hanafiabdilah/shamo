import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomField extends StatelessWidget {
  final String? text;
  final String? iconUrl;
  final String? placeholder;
  final bool? isPassword;
  final controller;

  const CustomField(
      {this.text,
      this.iconUrl,
      this.placeholder,
      this.isPassword = false,
      this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text!,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    iconUrl!,
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      controller: controller!,
                      obscureText: isPassword! ? true : false,
                      decoration: InputDecoration.collapsed(
                        hintText: placeholder!,
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
