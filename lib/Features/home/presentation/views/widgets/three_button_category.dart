import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/widgets/custom_btn.dart';

// ignore: must_be_immutable
class ThreeButtonCategory extends StatefulWidget {
  ThreeButtonCategory(
      {super.key, required this.ontap, required this.selectedButton});
  final Function ontap;
  int selectedButton;

  @override
  State<ThreeButtonCategory> createState() => _ThreeButtonCategoryState();
}

class _ThreeButtonCategoryState extends State<ThreeButtonCategory> {
  void handleButtonPress(int buttonIndex) {
    setState(() {
      widget.selectedButton = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 355.w,
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
                  text: "Users",
                  onPressed: () {
                    handleButtonPress(1);
                    widget.ontap(widget.selectedButton);
                  },
                  backgroundColor: widget.selectedButton == 1
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor:
                      widget.selectedButton == 1 ? Colors.white : Colors.black,
                ),
                CustomBtn(
                  text: "Services",
                  onPressed: () {
                    handleButtonPress(2);
                    widget.ontap(widget.selectedButton);
                  },
                  backgroundColor: widget.selectedButton == 2
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor:
                      widget.selectedButton == 2 ? Colors.white : Colors.black,
                ),
                CustomBtn(
                  text: "Order (0)",
                  onPressed: () {
                    handleButtonPress(3);
                    widget.ontap(widget.selectedButton);
                  },
                  backgroundColor: widget.selectedButton == 3
                      ? AppConstants.kPrimaryColor
                      : const Color(0xffF2F2F2),
                  textColor:
                      widget.selectedButton == 3 ? Colors.white : Colors.black,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
