import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/home/Slider.png',
              ),
            ),
          );
  }
}