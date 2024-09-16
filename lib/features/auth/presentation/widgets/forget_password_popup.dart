import 'package:flutter/material.dart';

import '../../../../core/helpers/utils.dart';
import '../../../../core/widgets/main_btn.dart';
import '../../../../core/widgets/main_text_field.dart';

class ForgotPasswordDialog {
  static showForgetPasswordDialog(BuildContext context, Function onClick) {
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Forgot password?',
              style: Theme.of(context).textTheme.displayLarge),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
              'Enter your email and we\'ll send you instructions to reset your password',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 10),
          CustomTextFormField(
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
            textEditingController: TextEditingController(),
            hintText: "Enter Your email",
            validator: (String text) => Utils.validateEmail(email: text.trim()),
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: MainBtn(
            lbl: "Submit",
            onClick: onClick,
          ),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
