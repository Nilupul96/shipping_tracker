import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_assets.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(AppAssets.deliveryBoy),
          Text(
            'Oops! No result\nto show.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
