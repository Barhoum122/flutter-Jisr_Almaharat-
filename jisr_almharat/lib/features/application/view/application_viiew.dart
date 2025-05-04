import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/application/logic/cubit.dart';
import 'package:jisr_almharat/features/application/logic/state.dart';
import 'package:jisr_almharat/features/application/view/widgets/appliction_form.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/widgets/app_text_button.dart';

class ApplicationView extends StatelessWidget {
  ApplicationView({
    super.key,
    required this.jobDetails,
  });
  late Job jobDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: BlocConsumer<ApplictionCubit, ApplictionState>(
          listener: (context, state) {
        if (state is ApplictionLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainBlue,
              ),
            ),
          );
        }
        if (state is ApplictionSuccess) {
          setupSuccessState(context,
              "Thanks for your time ,The response will coming in your notifcation ");
          // context.pop();
        }
        if (state is ApplictionError) {
          setupErrorState(context, state.error);
        }
      }, builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Appliction',
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    'Create a new and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: TextStyles.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  Column(
                    children: [
                      ApplictionForm(
                        jobDetails: jobDetails,
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: "Apply",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                      ),
                      verticalSpace(16),
                      // const TermsAndConditionsText(),
                      verticalSpace(30),

                      // const SignupBlocListener(),
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
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<ApplictionCubit>().formKey.currentState!.validate()) {
    context.read<ApplictionCubit>().submitApplication();
  }
}

void setupErrorState(BuildContext context, String text) {
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
        text,
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

void setupSuccessState(BuildContext context, String text) {
  context.pop();
  showDialog(
    traversalEdgeBehavior: TraversalEdgeBehavior.leaveFlutterView,
    context: context,
    builder: (context) => AlertDialog(
      title: Center(child: Text("Successfully")),
      icon: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 31, 245, 2),
        size: 32,
      ),
      content: Text(
        text,
        style: TextStyles.font14GrayRegular,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
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
