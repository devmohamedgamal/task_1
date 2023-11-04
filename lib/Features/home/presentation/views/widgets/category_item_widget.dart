import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/assets_manger.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {super.key, required this.title, required this.subTitle});
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AssetsManger.kEmptyBag,
        ),
        SizedBox(
          height: 42.h,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w300,
            color: AppConstants.kGreyColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
