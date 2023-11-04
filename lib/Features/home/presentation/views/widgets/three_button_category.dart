import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/widgets/custom_btn.dart';

class ThreeButtonCategory extends StatefulWidget {
  const ThreeButtonCategory({super.key});

  @override
  State<ThreeButtonCategory> createState() => _ThreeButtonCategoryState();
}

class _ThreeButtonCategoryState extends State<ThreeButtonCategory> {
  int selectedButton = 1;

  void handleButtonPress(int buttonIndex) {
    setState(() {
      selectedButton = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 345.w,
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 9.h),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffF2F2F2),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBtn(
                  text: "Category",
                  onPressed: () => handleButtonPress(1),
                  backgroundColor: selectedButton == 1
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor: selectedButton == 1 ? Colors.white : Colors.black,
                ),
                CustomBtn(
                  text: "Services",
                  onPressed: () => handleButtonPress(2),
                  backgroundColor: selectedButton == 2
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor: selectedButton == 2 ? Colors.white : Colors.black,
                ),
                CustomBtn(
                  text: "Order (0)",
                  onPressed: () => handleButtonPress(3),
                  backgroundColor: selectedButton == 3
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor: selectedButton == 3 ? Colors.white : Colors.black,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
