import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueColor = Color(0xff1F8DF5);
Color whiteColor = Color(0xffFFFFFF);
Color lightBlueColor = Color(0xff9ED0FF);
Color blackColor = Color(0xff000000);
Color greyColor = Color(0xff808BA2);
Color greenColor = Color(0xff29CB9E);
Color redColor = Color(0xffFF0000);
Color mainBackgroundColor = Color(0xffF8F8F8);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle welcomeTextStyle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: 14,
);

TextStyle categoriesTitleTextStyle = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle categoriesTextStyle = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

TextStyle titleTextStyle =
    TextStyle(color: blackColor, fontWeight: FontWeight.w500, fontSize: 16);

TextStyle subtitleTextStyle =
    TextStyle(color: greyColor, fontWeight: FontWeight.w300, fontSize: 14);

TextStyle titleSignInTextStyle = TextStyle(
  color: whiteColor,
  fontWeight: semiBold,
  fontSize: 36,
);

TextStyle subtitleSignInTextStyle = TextStyle(
  color: whiteColor,
  fontWeight: semiBold,
  fontSize: 18,
);

TextStyle labelInputTextStyle = TextStyle(
  color: whiteColor,
  fontWeight: medium,
  fontSize: 16,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
