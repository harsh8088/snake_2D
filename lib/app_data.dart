import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppData {
  //open weather api key
  // static const String ApiKey = "c48cc7ca56c6c4472a24c6604475b166";

//weather image
  static const String weatherClear =
      "https://cdn.pixabay.com/photo/2012/06/08/06/19/sky-49520__340.jpg";
  static const String weatherThunder =
      "https://cdn.pixabay.com/photo/2015/09/23/08/16/thunder-953118__340.jpg";

  static const String weatherSunny =
      "https://cdn.pixabay.com/photo/2017/12/28/17/41/nature-3045780__340.jpg";

  //routes
  static const String mRoute = "/route";
  static const String homeRoute = "/home";
  static const String gameRoute = "/game";

  static const String notFoundRoute = "/No Search Result";

  //strings
  static const String appName = "Snake-2D";

  //fonts
  static const String quickFont = "Quicksand";
  static const String ralewayFont = "Raleway";
  static const String quickBoldFont = "Quicksand_Bold.otf";
  static const String quickNormalFont = "Quicksand_Book.otf";
  static const String quickLightFont = "Quicksand_Light.otf";

 


  //login
  static const String enter_code_label = "Phone Number";
  static const String enter_code_hint = "10 Digit Phone Number";
  static const String enter_otp_label = "OTP";
  static const String enter_otp_hint = "4 Digit OTP";
  static const String get_otp = "Get OTP";
  static const String resend_otp = "Resend OTP";
  static const String login = "Login";
  static const String enter_valid_number = "Enter 10 digit phone number";
  static const String enter_valid_otp = "Enter 4 digit otp";

  //generic
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";
  static const String forgot_password = "Forgot Password?";
  static const String something_went_wrong = "Something went wrong";
  static const String coming_soon = "Coming Soon";

  static const MaterialColor ui_kit_color = Colors.grey;

//colors
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.blueGrey.shade800,
    Colors.black87,
  ];
  static List<Color> kitGradients2 = [
    Colors.cyan.shade600,
    Colors.blue.shade900
  ];

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }

  //urls
  static const String aboutUsUrl = "";
  static const String termsAndConditionUrl = "";
}
