import 'package:flutter/material.dart';

class ColorsManager {
  static const Color mainBlue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFFF4F8FF);
  static const Color darkBlue = Color(0xFF242424);
  static const Color gray = Color(0xFF757575);
  static const Color lightGray = Color(0xFFC2C2C2);
  static const Color lighterGray = Color(0xFFEDEDED);
  static const Color moreLightGray = Color(0xFFFDFDFF);
  static const Color moreLighterGray = Color(0xFFF5F5F5);

  static Color backgroundColor = const Color(0xffF5F8FA);
  static Color blueColor = const Color(0xff1DA1F2);
  static Color blackColor = const Color(0xff14171A);
  static Color darkGrayColor = const Color(0xff657786);
  static Color lightGrayColor = const Color(0xffAAB8C2);
  static Color errorColor = const Color(0xffFB4747);
  static Color whiteColor = const Color(0xffffffff);
}

// class AppTheme {
//   const AppTheme._();

//   static Color backgroundColor = const Color(0xffF5F8FA);
//   static Color blueColor = const Color(0xff1DA1F2);
//   static Color blackColor = const Color(0xff14171A);
//   static Color darkGrayColor = const Color(0xff657786);
//   static Color lightGrayColor = const Color(0xffAAB8C2);
//   static Color errorColor = const Color(0xffFB4747);
//   static Color whiteColor = const Color(0xffffffff);

  // static final lightTheme = Get.theme.copyWith(
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   brightness: Brightness.light,
  //   primaryColor: blueColor,
  //   hintColor: lightGrayColor,
  //   cardColor: whiteColor,
  //   textTheme: _lightTextTheme,
  //   // elevatedButtonTheme: _lightElevatedButtonTheme,
  //   // ignore: deprecated_member_use
  //   // inputDecorationTheme: _inputDecorationTheme, colorScheme: _lightColorScheme.copyWith(background: backgroundColor).copyWith(error: errorColor),
  // );

  // static final _lightTextTheme = Get.textTheme.copyWith(
  //   labelLarge: GoogleFonts.poppins(
  //     fontSize: 14.sp,
  //     fontWeight: FontWeight.w700,
  //   ),
  //   bodySmall: GoogleFonts.poppins(
  //     fontSize: 13.sp,
  //     fontWeight: FontWeight.w400,
  //     color: lightGrayColor,
  //   ),
  // );

  // // ignore: unused_field
  // static final _lightColorScheme = ColorScheme.fromSwatch().copyWith(
  //   surface: backgroundColor,
  //   onSurface: blackColor,
  //   primary: blueColor,
  //   onPrimary: backgroundColor,
  //   secondary: darkGrayColor,
  //   tertiary: lightGrayColor,
  // );

//   static final _lightElevatedButtonTheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: blueColor,
//       elevation: 10,
//       textStyle: _lightTextTheme.button,
//       shadowColor: blueColor.withOpacity(0.25),
//       foregroundColor: backgroundColor,
//       padding: EdgeInsets.all(16.w),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(14.r),
//       ),
//       disabledBackgroundColor: blueColor,
//       disabledForegroundColor: backgroundColor,
//     ),
//   );

//   static final _inputDecorationTheme = InputDecorationTheme(
//     contentPadding: EdgeInsets.all(16.w),
//     hintStyle: _lightTextTheme.caption,
//     errorStyle: _lightTextTheme.caption?.copyWith(
//       color: errorColor,
//       fontSize: 10.sp,
//     ),
//     fillColor: whiteColor,
//     filled: true,
//     errorMaxLines: 3,
//     counterStyle: _lightTextTheme.caption?.copyWith(fontSize: 10.sp),
//     suffixIconColor: darkGrayColor,
//     prefixIconColor: lightGrayColor,
//     enabledBorder: _outlineInputBorder,
//     border: _outlineInputBorder,
//     focusedBorder: _outlineInputBorder,
//     errorBorder: _outlineInputBorder.copyWith(
//       borderSide: BorderSide(color: errorColor),
//     ),
//   );

//   static final _outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(14.r),
//     borderSide: BorderSide(
//       color: blackColor.withOpacity(0.1),
//       width: 1.0,
//     ),
  // );
// }
