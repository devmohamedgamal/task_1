import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/core/utils/assets_manger.dart';

import '../../../../../core/utils/app_constants.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppConstants.kContanterColor,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 152.h,
                width: 183.w,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.h, horizontal: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Multi-Services for Your Real Estate Needs",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff101010),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 128.w,
                        height: 32.h,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppConstants.kPrimaryColor,
                              padding: EdgeInsets.symmetric(
                                horizontal: 44.5.w,
                                vertical: 7.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                            ),
                            child: Text(
                              'Order',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 1.22,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Image.asset(
                AssetsManger.kManPresentation,
                height: 144.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) => buildDot(index)),
        ),
      ],
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 7,
      width: currentIndex == index ? 32 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? AppConstants.kPrimaryColor
            : const Color(0xffE0E0E0),
      ),
    );
  }
}
