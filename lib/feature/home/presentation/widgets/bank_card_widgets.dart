import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theme/app_text_style.dart';

class BankCardWidgets extends StatelessWidget {
  const BankCardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              margin: EdgeInsets.only(top: 335.h),
              width: 225.w,
              height: 230.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0),
                    blurRadius: 4,
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(AppImages.bankImages),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        'Egyptian Food Bank',
                        style: AppTextStyle.poppins16W500blackcColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          'The first Egyptian\n charitable organization',
                          style: AppTextStyle.poppins12W500secondeGreyColor
                              .copyWith(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Image.asset(AppImages.homeArrowImages),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
  }
}