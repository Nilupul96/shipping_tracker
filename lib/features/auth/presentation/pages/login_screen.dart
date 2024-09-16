import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shipping_tracker/core/app_assets.dart';
import 'package:shipping_tracker/core/widgets/main_btn.dart';
import 'package:shipping_tracker/core/widgets/main_text_field.dart';
import 'package:shipping_tracker/core/widgets/snackbar_dialog.dart';
import 'package:shipping_tracker/features/home/presentation/pages/home_screen.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/helpers/utils.dart';
import '../widgets/forget_password_popup.dart';

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
  bool isAutoValidateModeEnable = false;
  bool _isObsecure = true;

  Future<void> login() async {
    try {
      FocusScope.of(context).unfocus();
      if (!_formKey.currentState!.validate()) {
        setState(() {
          isAutoValidateModeEnable = true;
        });
        return;
      }
      context.goNamed(HomeScreen.routeName);
    } catch (e) {
      SnackBarDialog.showSnackBar(context, '$e');
    }
  }

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
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Form(
                autovalidateMode: isAutoValidateModeEnable
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RSizedBox(height: 200),
                    CustomTextFormField(
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      textEditingController: _emailController,
                      hintText: "Enter Your email",
                      validator: (String text) =>
                          Utils.validateEmail(email: text.trim()),
                    ),
                    const RSizedBox(
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
                        ),
                        validator: (String text) {
                          return Utils.validatePassword(password: text.trim());
                        }),
                    const RSizedBox(
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
                        const RSizedBox(
                          width: 6,
                        ),
                        const Text('Remember Me'),
                      ],
                    ),
                    MainBtn(
                      lbl: "Log In",
                      onClick: () => login(),
                    ),
                    const RSizedBox(
                      height: 14,
                    ),
                    InkWell(
                      onTap: () =>
                          ForgotPasswordDialog.showForgetPasswordDialog(context,
                              () {
                        Navigator.of(context).pop();
                      }),
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
