import 'package:flutter/material.dart';

// list of colors that we use in our app
const kAccentColor = Color(0xFF0650BB);
const kLightBlueColor = Color(0xFF3E7CD5);
const kDarkBlueColor = Color(0xFF054198);
const kButtonBlueColor = Color(0xff007eff);
const kButtonAccentBlueColor = Color(0xff66b2ff);
const kMainBackgroundColor = Color(0xFF000116);
const kBlueBoldText = Color(0xFF0068A7);
const kGrayBoldText = Color(0xFF8E8F9A);

const kcheckBoxBlueColor = Color(0xff007eff);
const kcheckBoxAccentBlueColor = Color(0xff66b2ff);

const kGreyBackground = Color(0xFFF1F1F1);
const kGreyIconColor = Color(0xFFF1F1F1);
const kHeaderBackground = Color(0xFFF5F6FA);
const kTextColorWhite = Color(0xFFFFFAFA);
const kTextColorBlack = Color(0xFF2E2E2E);
const kTextColorBlue = Color(0xFF007EFF);
const kTextColorGrey = Color(0xFFBBBBBB);
const kCountryNameTextColorBlack = Color(0xFF111018);
const kCountrySearchHintColorGrey = Color(0xFF828282);
const kCountryListPageTitleColoreWhite = Color(0xFFFFFFFF);
const kCountryListPageBackgroundGrey = Color(0xFFF2F2F2);
const kCountryListPageAppBarBackground = Color(0xFF000116);
const kCountryListPageUnselectedTabBackground = Color(0xFF292B3A);


const kBorderRadius = 10.0;
const kJobItemBorderRadius = 5.0;
const kProfileCardBorderRadius = 8.0;

const kCompleteProfileMessage =
    'You need to complete your profile to get better matches.';

TextStyle kBlueBoldTextStyle() {
  return TextStyle(
    fontFamily: 'Roboto',
    color: kBlueBoldText,
    fontSize: 44.0,
    fontWeight: FontWeight.w600,
  );
}

TextStyle grayBoldTextStyle() {
  return TextStyle(
    fontFamily: 'Helvetica',
    color: kGrayBoldText,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
}

TextStyle kCountryListPageTitleStyleWhite() {
  return TextStyle(
    color: kCountryListPageTitleColoreWhite,
    fontFamily: 'Helvetica',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}

TextStyle kCountryNameTextStyleBlack() {
  return TextStyle(
    color: kCountryNameTextColorBlack,
    fontFamily: 'Helvetica',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kCountrySearchHintStyleGrey() {
  return TextStyle(
    color: kCountrySearchHintColorGrey,
    fontFamily: 'Helvetica',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
TextStyle kH2FontTextStyleWhite() {
  return TextStyle(
    color: kTextColorWhite,
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kNormalFontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kNormalFontTextStyleBlue() {
  return TextStyle(
    color: kTextColorBlue,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kNormalFontTextStyleGrey() {
  return TextStyle(
    color: kTextColorGrey,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kH2FontTextStyleBlue() {
  return TextStyle(
    color: kTextColorBlue,
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kH3TitleFontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kBodyTextFontTextStyleBlue() {
  return TextStyle(
    color: kTextColorBlue,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kSmallHeadingFontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}

TextStyle kH3FontTextStyleWhite() {
  return TextStyle(
    color: kTextColorWhite,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kH3FontTextStyleBlackBold() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kBodyFontTextStyleWhite() {
  return TextStyle(
    color: kTextColorWhite,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kBodyFontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kSmallHeadingBoldTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kSmallHeadingBoldTextStyleBlue() {
  return TextStyle(
    color: kTextColorBlue,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kBodyFontTextStyle4Black() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
}

TextStyle kH1FontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}



TextStyle kH2FontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kH3FontTextStyleBlack() {
  return TextStyle(
    color: kTextColorBlack,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

TextStyle kButtonTextStyle() {
  return TextStyle(
    color: kTextColorWhite,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}


