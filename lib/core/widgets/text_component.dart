import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shipping_tracker/core/app_colors.dart';

class TextComponent extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  const TextComponent(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: 45.h,
            width: 45.h,
            child: SvgPicture.asset(
              icon,
            )),
        SizedBox(
          width: 11.w,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    color: AppColors.black,
                    fontSize: 24.sp),
              ),
              RSizedBox(
                height: 7,
              ),
              Text(
                subTitle,
                style: textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 16.sp),
              )
            ],
          ),
        )
      ],
    );
  }
}
