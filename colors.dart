import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Color white = HexColor("#FFFFFF"); //white
Color primaryBlack = HexColor("#1E202D");
Color primaryPink = HexColor("#E87AFF");
Color primaryDrawerBack = HexColor("#4B4C56");
Color primaryDrawerItemColor = HexColor("#BBBBBB");
Color sliderColor1 = HexColor("#87008F");
Color sliderColor2 = HexColor("#FF55FF");
Color fontBlue = HexColor("#00FFFF");
Color primarySubtitleTextColor = HexColor("#7E8389");
Color colorUpperBlackLogin = HexColor("#13141C");
Color colorLoginTextFieldBack = HexColor("#1E202D");
Color colorSearchTextField = HexColor("#4C4D57");
Color colorAddressHint = HexColor("#7F8389");
Color colorResContainer = HexColor("#494A54");

Color addtoCartGrad1 = HexColor("#F865EF");
Color addtoCartGrad2 = HexColor("#87008F");

Color checkoutGrad1 = HexColor("#00FFFF");
Color checkoutGrad2 = HexColor("#00ADAD");
Color offWhite = HexColor("#F2F2F2");
Color bottomModalBackColor = HexColor("#303241");
Color primaryCaptionTextColor = HexColor("#DEDEDE");
//Color loader_back = HexColor("#");

//#303241;

//COLORS TAG END//

final colorCyan = Color(0xff00FFFF);
final colorPink = Color(0xffFF6DD6);

final colorDarkBlue = Color(0xff1E202D);
final colorLightBlue = Color(0xff3A3C4D);
final colorGray = Color(0xffa5a5a5);
final colorFadedWhite = Color(0xffe5e5e5);

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
