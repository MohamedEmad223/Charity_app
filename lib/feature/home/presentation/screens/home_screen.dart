import 'package:charity_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/bank_card_widgets.dart';
import '../widgets/image_widgets.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/text_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: SearchBarWidget(),
            ),
          ),
          ImageWidgets(),
          TextWidgets(
            top: 300.h,
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            clipBehavior: Clip.none,
            itemCount: 10,
            itemBuilder: (context, index) => Expanded(child: BankCardWidgets()),
          ),
          Positioned(top: 600.h, child: Text('asjbdjajfd')),
        ],
      ),
    );
  }
}
