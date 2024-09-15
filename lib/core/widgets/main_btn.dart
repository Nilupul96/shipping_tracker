import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../app_colors.dart';

class MainBtn extends StatefulWidget {
  final String lbl;
  final Function onClick;
  final bool isLoading;
  final bool isEnabled;
  final Color? bgColor;
  final String? icon;
  final bool disableSplash;

  const MainBtn(
      {super.key,
      this.lbl = "",
      this.bgColor,
      required this.onClick,
      this.isLoading = false,
      this.isEnabled = true,
      this.disableSplash = false,
      this.icon});

  @override
  State<MainBtn> createState() => _MainBtnState();
}

class _MainBtnState extends State<MainBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.h,
      decoration: BoxDecoration(
          gradient: AppColors.btnGradient,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: Offset(-1, 1),
                spreadRadius: 0,
                color: AppColors.btnShadowColor)
          ]),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            splashFactory: widget.disableSplash
                ? NoSplash.splashFactory
                : InkRipple.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: widget.isEnabled
              ? !widget.isLoading
                  ? () async {
                      await widget.onClick();
                    }
                  : null
              : null,
          child: widget.isLoading
              ? const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : widget.icon != null
                  ? SvgPicture.asset(widget.icon!)
                  : Text(
                      widget.lbl,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    )),
    );
  }
}
