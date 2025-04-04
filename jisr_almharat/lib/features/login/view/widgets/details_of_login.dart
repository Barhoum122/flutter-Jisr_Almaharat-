// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:jisr_almharat/core/helpers/spacing.dart';
// import 'package:jisr_almharat/core/theming/styles.dart';

// class DetailsOfLogin extends StatelessWidget {
//   const DetailsOfLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Welcome Back !',
//               style: TextStyles.font24BlackBold,
//             ),
//             verticalSpace(36),
//             Column(
//               children: [
//                 // const EmailAndPassword(),
//                 verticalSpace(24),
//                 Align(
//                   alignment: AlignmentDirectional.centerEnd,
//                   child: Text(
//                     'Forgot Password?',
//                     style: TextStyles.font13BlueRegular,
//                   ),
//                 ),
//                 verticalSpace(40),
//                 AppTextButton(
//                   buttonText: "Login",
//                   textStyle: TextStyles.font16WhiteSemiBold,
//                   onPressed: () {
//                     validateThenDoLogin(context);
//                   },
//                 ),
//                 verticalSpace(20),
//                 AppTextButton(
//                   buttonText: " Without Login",
//                   backgroundColor: Color.fromARGB(255, 207, 70, 28),
//                   textStyle: TextStyles.font16WhiteSemiBold,
//                   onPressed: () {
//                     context.pushNamed(Routes.homeScreen);
//                   },
//                 ),
//                 verticalSpace(16),
//                 const TermsAndConditionsText(),
//                 verticalSpace(60),
//                 const DontHaveAccountText(),
//                 const LoginBlocListener(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void validateThenDoLogin(BuildContext context) {
//   if (context.read<LoginCubit>().formKey.currentState!.validate()) {
//     context.read<LoginCubit>().emitLoginStates();
//   }
// }
