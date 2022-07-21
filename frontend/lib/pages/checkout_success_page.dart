import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/custom_appbar.dart';
import 'package:shamo/widgets/empty_page.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'Checkout Success',
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Column(
          children: [
            EmptyPage(
              imageUrl: 'assets/images/empty_cart.png',
              title: 'You made a transaction',
              subTitle: 'Stay at home while we prepare your dream shoes',
              textButton: 'Order Other Shoes',
              button2: true,
            ),
          ],
        ),
      ),
    );
  }
}
