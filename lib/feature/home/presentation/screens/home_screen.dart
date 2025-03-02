import 'package:charity_app/core/helpers/app_images.dart';
import 'package:charity_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 187.h,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r))),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Row(
                  children: [
                    Center(
                      child: Image.asset(
                        AppImages.homeImages,
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(AppImages.searchImages))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
