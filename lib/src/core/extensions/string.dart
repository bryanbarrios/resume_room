import 'package:flutter/material.dart';
import 'package:resume_room/src/l10n/l10n.dart';

extension StringX on String {
  String? validateEmpty(BuildContext context) =>
      (isEmpty) ? context.l10n.required : null;

  String? validateEmail(BuildContext context) {
    var regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return (isEmpty)
        ? context.l10n.required
        : (!regex.hasMatch(this))
            ? context.l10n.invalidEmail
            : null;
  }

  String? validatePassword(BuildContext context) {
    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(passwordPattern);
    if (isEmpty) {
      return context.l10n.required;
    } else if (length < 8) {
      return context.l10n.passwordLength;
    } else if (!regex.hasMatch(this)) {
      return context.l10n.insecurePassword;
    } else {
      return null;
    }
  }
}
