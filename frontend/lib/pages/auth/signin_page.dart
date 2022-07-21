import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/custom_field.dart';
import 'package:shamo/widgets/custom_footer.dart';
import 'package:shamo/widgets/custom_header.dart';
import 'package:shamo/widgets/custom_text_button.dart';

class SignInPage extends StatelessWidget {
  static TextEditingController? emailController =
      TextEditingController(text: '');
  static TextEditingController? passwordController =
      TextEditingController(text: '');

  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                title: 'Login',
                subTitle: 'Sign In to Continue',
              ),
              SizedBox(height: 50),
              CustomField(
                text: 'Email Address',
                iconUrl: 'assets/images/email_icon.png',
                placeholder: 'Your Email Address',
                controller: emailController,
              ),
              CustomField(
                text: 'Password',
                iconUrl: 'assets/images/password_icon.png',
                placeholder: 'Your Password',
                isPassword: true,
                controller: passwordController,
              ),
              CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                text: 'Sign In',
              ),
              SizedBox(height: 12),
              CustomFooter(
                text: 'Dont\'n have an account? ',
                textButton: 'Sign Up',
                onTap: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
