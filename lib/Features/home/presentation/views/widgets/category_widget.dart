import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_list_view.dart';
import 'category_item_widget.dart';
import 'three_button_category.dart';

class CategoryWidgetSection extends StatefulWidget {
  const CategoryWidgetSection({super.key});

  @override
  State<CategoryWidgetSection> createState() => _CategoryWidgetSectionState();
}

class _CategoryWidgetSectionState extends State<CategoryWidgetSection> {
  PageController? pageController;
  int selectedButton = 1;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 475.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            ThreeButtonCategory(
              ontap: (i) {
                pageController!.jumpToPage(i - 1);
              },
              selectedButton: selectedButton,
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (i) {
                  setState(() {
                    selectedButton = i + 1;
                  });
                },
                controller: pageController,
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories View",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.25,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'see all',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.underline,
                                color: const Color(0xff8C8C8C),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const CategoryListView(),
                    ],
                  ),
                  const CategoryItemWidget(
                    title: "No services found",
                    subTitle:
                        "you can place your needed services to let serve you.",
                  ),
                  const CategoryItemWidget(
                    title: "No order found",
                    subTitle:
                        "you can place your needed order to let serve you.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
