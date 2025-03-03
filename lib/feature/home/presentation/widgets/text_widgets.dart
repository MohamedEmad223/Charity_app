import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_style.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({super.key, this.top});
  final double? top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Text(
          'Nearby Charities',
          style: AppTextStyle.poppins16W500blackcColor.copyWith(
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
