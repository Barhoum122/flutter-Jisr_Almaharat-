import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsManager.moreLightGray,
                ColorsManager.backgroundColor.withOpacity(0.0)
                // Colors.white,
                // Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.16, 0.5],
            ),
          ),
          child: Image.asset('assets/images/onborder1.png'),
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Text(
            'Best Jobs & Training\nin Our App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
