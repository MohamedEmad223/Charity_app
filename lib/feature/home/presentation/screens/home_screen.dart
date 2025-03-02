import 'package:charity_app/core/helpers/app_images.dart';
import 'package:charity_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.r),
                bottomRight: Radius.circular(60.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Center(child: Image.asset(AppImages.homeImages)),
                      Spacer(),
                      Image.asset(AppImages.searchImages)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/home/Slider.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
