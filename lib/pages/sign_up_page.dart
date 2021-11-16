import 'package:flutter/material.dart';
import 'package:discovery/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 32,
          left: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovery Indonesia',
              style: titleSignInTextStyle,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 9),
            Text('Register and Happy Discover', style: subtitleSignInTextStyle),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 36, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name', style: labelInputTextStyle),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration.collapsed(hintText: 'type here...'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 16, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address', style: labelInputTextStyle),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration.collapsed(hintText: 'type here...'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 16, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: labelInputTextStyle),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        decoration:
                            InputDecoration.collapsed(hintText: 'type here...'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 38, left: 32, right: 32),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: blackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text('Sign Up',
              style: primaryTextStyle.copyWith(
                color: whiteColor,
                fontSize: 16,
                fontWeight: regular,
              )),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 32, right: 32, bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: primaryTextStyle.copyWith(
                color: whiteColor,
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                ' Sign In',
                style: primaryTextStyle.copyWith(
                  color: greyColor,
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sign-up.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header(),
                      nameInput(),
                      emailInput(),
                      passwordInput(),
                      signUpButton(),
                      // Spacer(),
                      footer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
