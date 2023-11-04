import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/assets_manger.dart';

class NameAndTextPresntationSection extends StatelessWidget {
  const NameAndTextPresntationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              AssetsManger.kProfileIcon2,
              height: 28.h,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Hey, Ahmed  🙏',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          "Multi-Services for Your Real Estate Needs",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff101010),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: AppConstants.kGreyColor,
          ),
        ),
      ],
    );
  }
}
