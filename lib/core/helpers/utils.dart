import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  static String? validateEmail({required String email}) {
    if (email.isEmpty) {
      return "Please enter Email";
    }

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.trim());
    if (!emailValid) {
      return "Please enter a valid Email";
    }
    return null;
  }

  static String? validatePassword({required String password}) {
    if (password.isEmpty) {
      return "Please enter your password";
    }
    return null;
  }

  static validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10 && phoneNumber.startsWith('0')) {
      return true;
    } else {
      return false;
    }
  }

  static getFormattedDate(String date, {String dateFormat = "yyyy-MMM-dd"}) {
    try {
      return DateFormat(dateFormat).format(DateTime.parse(date));
    } catch (e) {
      return "";
    }
  }

  static convert12HoursFormat(time) {
    try {
      DateTime dateTime =
          DateFormat("hh:mm").parse("${time.hour}:${time.minute}");
      DateFormat timeFormat = DateFormat("h:mm a");
      return timeFormat.format(dateTime);
    } catch (e) {
      return "";
    }
  }

  static getFormattedTime(String date) =>
      DateFormat("hh:mm a").format(DateTime.parse(date));
}
