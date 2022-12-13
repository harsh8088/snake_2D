import 'package:flutter/material.dart';

class AppNavigator {
  static void goToHome(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  static void goToMySchedules(BuildContext context) {
    Navigator.pushNamed(context, "/schedules");
  }

  static void goToGame(BuildContext context) {
    Navigator.pushNamed(context, "/game");
  }

  static void goToOtpScreen(BuildContext context, Map value) {
    Navigator.pushNamed(context, "/otp-screen", arguments: value);
  }

  static void goToHelpAndSupport(BuildContext context) {
    Navigator.pushNamed(context, "/help-and-support");
  }
}
