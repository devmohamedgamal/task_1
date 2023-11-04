import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatefulWidget {
  const CustomBtn(
      {super.key,
      required this.text,
      this.onPressed,
      required this.backgroundColor,
      required this.textColor});
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor, textColor;

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.w,
      height: 30.h,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.r),
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: widget.textColor,
              height: 1.22,
            ),
          )),
    );
  }
}
