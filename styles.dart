import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:munchies_app/utils/constant.dart';

import 'Colors.dart';

// INIT
double large = 32;
double regular = 14;
double small = 12;

double titleSize = 16;

// LARGE SIZE
final lgBold = TextStyle(
  fontSize: large,
  fontFamily: "Gordita-Bold",
  color: Colors.white,
);
final lgBook = TextStyle(
  fontSize: large,
  fontFamily: "Gordita-Regular",
  color: Colors.white,
);

// REGULAR SIZE
final rgBold = TextStyle(
    fontSize: regular, fontFamily: "Gordita-Bold", color: Colors.white);
final rgBook = TextStyle(
    fontSize: regular, fontFamily: "Gordita-Regular", color: Colors.white);

final rgMed = TextStyle(
    fontSize: regular, fontFamily: "Gordita-Medium", color: Colors.white);

// SMALL SIZE
final smBold =
    TextStyle(fontSize: small, fontFamily: "Gordita-Bold", color: Colors.white);

final smBook = TextStyle(
    fontSize: small, fontFamily: "Gordita-Regular", color: Colors.white);

final smMed = TextStyle(
    fontSize: small, fontFamily: "Gordita-Medium", color: Colors.white);

// PADDING
double rgPadding = regular;
double lgPadding = rgPadding * 2;
double smPadding = rgPadding / 2;
double miniPadding = smPadding / 1.5;

double screenPadding = regular / 1.25;

TextStyle sectionTileDelivering() {
  return TextStyle(fontSize: h4, color: fontBlue, height: 1.5);
}

TextStyle sectionTileDeliveringSubtitle() {
  return TextStyle(fontSize: caption, color: white, height: 1.2);
}

TextStyle sectionTileBannerTitle() {
  return TextStyle(fontSize: h4, color: white, fontWeight: FontWeight.w600);
}

TextStyle sectionTileBannerSubTitle() {
  return TextStyle(
    fontSize: caption,
    color: white,
  );
}

TextStyle sectionTileTitle() {
  return TextStyle(
    color: white,
    fontSize: h5,
    height: 1.5,
  );
}

TextStyle sectionTileFoodListTitle() {
  return TextStyle(fontSize: h5, fontWeight: FontWeight.w700, color: white);
}

TextStyle sectionTileFoodListSubTitle() {
  return TextStyle(fontSize: caption, color: primarySubtitleTextColor);
}

TextStyle listTileTitleStyle() {
  return TextStyle(
    color: fontBlue,
    fontSize: h5,
    fontWeight: FontWeight.w600,
  );
}

TextStyle listTileTitleStyleWhite() {
  return TextStyle(
    color: white,
    fontSize: subHead,
    fontWeight: FontWeight.w500,
  );
}

TextStyle listTileSubtitleStyle() {
  return TextStyle(
    color: colorSearchTextField,
    fontSize: caption,
  );
}

TextStyle listTileSubtitle2Style() {
  return TextStyle(
    color: white,
    fontSize: caption,
  );
}

TextStyle listTileSubtitle3Style() {
  return TextStyle(
    color: white,
    fontSize: paragraph,
  );
}

TextStyle listTileParagraphStyle() {
  return TextStyle(
    color: white,
    fontSize: subHead,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
}

TextStyle listTileParagraphWeightStyle() {
  return TextStyle(
    color: white,
    fontSize: subHead,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );
}

TextStyle listTileParagraphBlueStyle() {
  return TextStyle(
    color: fontBlue,
    fontSize: subHead,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );
}
