import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageForLogin extends StatelessWidget {
  const ImageForLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/splash_android12_logo.png',
                height: 100.sp,
                width: 100.sp,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
