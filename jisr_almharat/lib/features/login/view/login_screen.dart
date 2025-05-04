import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/login/logic/cubit/login_cubit.dart';
import 'package:jisr_almharat/features/login/logic/cubit/login_state.dart';
import 'package:jisr_almharat/features/login/view/widgets/dont_have_account_text.dart';
import 'package:jisr_almharat/features/login/view/widgets/email_and_password.dart';
import 'package:jisr_almharat/features/login/view/widgets/terms_and_conditions_text.dart';
import 'package:jisr_almharat/widgets/app_text_button.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
        if (state is AuthLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainBlue,
              ),
            ),
          );
        }
        if (state is AuthSuccess) {
          context.pop();
          context.pushReplacementNamed(Routes.homeView,
              arguments: state.userData);
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("No Internet Conection:"),
              // content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }

        if (state is MsError) {
          setupErrorState(context, state.mserror);
        }
      }, builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ImageForLogin(),
                  Text(
                    'Welcome Back',
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style: TextStyles.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),

                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        verticalPadding: 12,
                        // horizontalPadding: 20,
                        buttonHeight: 54,
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const DontHaveAccountText(),
                      // const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    traversalEdgeBehavior: TraversalEdgeBehavior.leaveFlutterView,
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Error"),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyles.font14GrayRegular,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font14BlueSemiBold,
          ),
        ),
      ],
    ),
  );
}
