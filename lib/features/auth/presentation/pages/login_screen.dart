import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shipping_tracker/core/app_assets.dart';
import 'package:shipping_tracker/core/widgets/main_btn.dart';
import 'package:shipping_tracker/core/widgets/main_text_field.dart';

import '../../../../core/app_colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isRememberMeEnable = false;
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RSizedBox(height: 200),
                    CustomTextFormField(
                        labelText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        textEditingController: _emailController,
                        hintText: "Enter Your email"),
                    RSizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                        labelText: "Password",
                        keyboardType: TextInputType.text,
                        textEditingController: _passwordController,
                        hintText: "Enter Your password",
                        isObscure: _isObsecure,
                        maxLines: 1,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });
                          },
                          icon: Icon(_isObsecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                    RSizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: _isRememberMeEnable,
                            onChanged: (value) {
                              setState(() {
                                _isRememberMeEnable = value ?? false;
                              });
                            }),
                        RSizedBox(
                          width: 6,
                        ),
                        Text('Remember Me'),
                      ],
                    ),
                    MainBtn(
                      lbl: "Log In",
                      onClick: () {},
                    ),
                    RSizedBox(
                      height: 14,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: AppColors.lightBlue),
                      ),
                    ),
                    SizedBox(
                        height: 227.h,
                        child: Image.asset(AppAssets.deliveryBoy))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
