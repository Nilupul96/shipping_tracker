import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipping_tracker/core/app_colors.dart';
import 'package:shipping_tracker/core/widgets/text_component.dart';
import 'package:shipping_tracker/features/home/presentation/widgets/home_section_component.dart';

import '../../../../core/app_icons.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_rounded,
                color: AppColors.iconGrey,
              ))
        ],
      ),
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          width: 300.w,
          decoration: BoxDecoration(color: AppColors.bgBlue),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const RSizedBox(
                height: 20,
              ),
              //  order section
              HomeSectionComponent(
                title: 'Orders Statistics',
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextComponent(
                          title: '3.1k',
                          subTitle: 'Orders Count',
                          icon: AppIcons.orderCountIcon),
                    ),
                    const RSizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: TextComponent(
                          title: '3.1k',
                          subTitle: 'Total Delivery Charge',
                          icon: AppIcons.orderCountIcon),
                    )
                  ],
                ),
              ),
              // finance section
              HomeSectionComponent(
                title: 'Finance Statistics',
                content: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextComponent(
                              title: '233.1k',
                              subTitle: 'Invoice value',
                              icon: AppIcons.orderCountIcon),
                        ),
                        const RSizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: TextComponent(
                              title: '113.1k',
                              subTitle: 'Pending Invoice',
                              icon: AppIcons.orderCountIcon),
                        )
                      ],
                    ),
                    const RSizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextComponent(
                              title: '334.1k',
                              subTitle: 'Paid Invoice value',
                              icon: AppIcons.orderCountIcon),
                        ),
                        const RSizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: TextComponent(
                              title: '103.1k',
                              subTitle: 'Approved Invoice',
                              icon: AppIcons.orderCountIcon),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              HomeSectionComponent(
                title: 'Status Statistics',
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.message),
                    TextButton(
                        onPressed: () {},
                        child: Text('show details',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lightBlue,
                                    fontSize: 16.sp)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
