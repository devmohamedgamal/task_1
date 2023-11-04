import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_widget.dart';
import 'custom_carousel.dart';
import 'name_and_text_presentation.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              const NameAndTextPresntationSection(),
              SizedBox(
                height: 16.h,
              ),
              const CustomCarousel(),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
        const CategoryWidgetSection(),
      ],
    );
  }
}
