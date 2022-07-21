import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/custom_appbar.dart';
import 'package:shamo/widgets/custom_text_button.dart';
import 'package:shamo/widgets/list_item.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38),
              Text(
                'List Items',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ListItem(
                      imageUrl: 'assets/images/shoes.png',
                      productName: 'Terrex Urban Low',
                      price: '\$143',
                      item: '2',
                    ),
                    ListItem(
                      imageUrl: 'assets/images/shoes.png',
                      productName: 'Terrex Urban Low',
                      price: '\$143',
                      item: '2',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address Details',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/store_location.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/images/line.png',
                              height: 30,
                            ),
                            Image.asset(
                              'assets/images/pin_location.png',
                              width: 40,
                            ),
                          ],
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Location',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Adidas Core',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Your Address',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              'Bogor, Indonesia',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Quantity',
                          style: secondaryTextStyle.copyWith(fontSize: 12),
                        ),
                        Text(
                          '2 Items',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Price',
                          style: secondaryTextStyle.copyWith(fontSize: 12),
                        ),
                        Text(
                          '\$823',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: secondaryTextStyle.copyWith(fontSize: 12),
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Divider(
                      thickness: 1,
                      color: Color(0xff2B2939),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: priceTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        Text(
                          '\$883',
                          style: priceTextStyle.copyWith(fontWeight: semiBold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 1,
                color: Color(0xff2B2939),
              ),
              SizedBox(height: 30),
              CustomTextButton(
                marginTop: 0,
                text: 'Checkout Now',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/checkout-success', (route) => false);
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'Checkout Detail',
          automaticallyImplyLeading: true,
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: content(),
    );
  }
}
