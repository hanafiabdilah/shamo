import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/custom_field.dart';
import 'package:shamo/widgets/custom_footer.dart';
import 'package:shamo/widgets/custom_header.dart';
import 'package:shamo/widgets/custom_text_button.dart';

class SignUpPage extends StatelessWidget {
  static TextEditingController? nameController =
      TextEditingController(text: '');
  static TextEditingController? usernameController =
      TextEditingController(text: '');
  static TextEditingController? emailController =
      TextEditingController(text: '');
  static TextEditingController? passwordController =
      TextEditingController(text: '');

  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      if (await authProvider.register(
        name: nameController!.text,
        username: usernameController!.text,
        email: emailController!.text,
        password: passwordController!.text,
      )) {
        Navigator.pushNamed(context, '/home');
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              CustomHeader(
                title: 'Sign Up',
                subTitle: 'Register and Happy Shopping',
              ),
              SizedBox(height: 30),
              CustomField(
                text: 'Full Name',
                iconUrl: 'assets/images/name_icon.png',
                placeholder: 'Your Full Name',
                controller: nameController,
              ),
              CustomField(
                text: 'Username',
                iconUrl: 'assets/images/username_icon.png',
                placeholder: 'Your Username',
                controller: usernameController,
              ),
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
                controller: passwordController,
                isPassword: true,
              ),
              CustomTextButton(
                onPressed: handleSignUp,
                text: 'Sign Up',
              ),
              SizedBox(height: 12),
              CustomFooter(
                text: 'Already have an account? ',
                textButton: 'Sign In',
                onTap: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
