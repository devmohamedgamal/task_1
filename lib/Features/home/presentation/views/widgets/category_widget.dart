import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/core/utils/app_constants.dart';

import '../../../../../core/utils/widgets/custom_btn.dart';

class CategoryWidgetSection extends StatefulWidget {
  const CategoryWidgetSection({super.key});

  @override
  State<CategoryWidgetSection> createState() => _CategoryWidgetSectionState();
}

class _CategoryWidgetSectionState extends State<CategoryWidgetSection> {
  int selectedButton = 1;

  void handleButtonPress(int buttonIndex) {
    setState(() {
      selectedButton = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 436.h,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 335.w,
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
                    textColor:
                        selectedButton == 1 ? Colors.white : Colors.black,
                  ),
                  CustomBtn(
                    text: "Services",
                    onPressed: () => handleButtonPress(2),
                    backgroundColor: selectedButton == 2
                        ? AppConstants.kPrimaryColor
                        : const Color(0xffF2F2F2),
                    textColor:
                        selectedButton == 2 ? Colors.white : Colors.black,
                  ),
                  CustomBtn(
                    text: "Order (0)",
                    onPressed: () => handleButtonPress(3),
                    backgroundColor: selectedButton == 3
                        ? AppConstants.kPrimaryColor
                        : const Color(0xffF2F2F2),
                    textColor:
                        selectedButton == 3 ? Colors.white : Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class CategoryWidget extends StatelessWidget {
//   const CategoryWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("Category View"),
//     );
//   }
// }

// class ServicesWidget extends StatelessWidget {
//   const ServicesWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("Services View"),
//     );
//   }
// }

// class OrderWidget extends StatelessWidget {
//   const OrderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("Order View"),
//     );
//   }
// }
