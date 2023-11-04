import 'package:flutter/material.dart';
import '../app_constants.dart';

class CustomLoadingIndecator extends StatelessWidget {
  const CustomLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppConstants.kPrimaryColor,
      ),
    );
  }
}
