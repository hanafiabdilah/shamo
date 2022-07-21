import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cart_card.dart';
import 'package:shamo/widgets/custom_appbar.dart';
import 'package:shamo/widgets/custom_text_button.dart';
import 'package:shamo/widgets/empty_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  Widget emptyCart() {
    return Center(
      child: Column(
        children: [
          EmptyPage(
            imageUrl: 'assets/images/empty_cart.png',
            title: 'Opps! Your Cart is Empty',
            subTitle: 'Let\'s find your favorite shoes',
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        CartCard(),
        CartCard(),
        CartCard(),
        CartCard(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget buttomNav() {
      return Container(
        height: 165,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal', style: primaryTextStyle),
                  Text(
                    '\$23',
                    style: priceTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                text: 'Continue to Checkout',
                marginTop: 15,
                paddingHorizontal: 20,
                mainAxis: MainAxisAlignment.spaceBetween,
                isIcon: true,
                icon: Icons.arrow_forward,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'Your Cart',
          automaticallyImplyLeading: true,
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: content(),
      bottomNavigationBar: buttomNav(),
    );
  }
}
