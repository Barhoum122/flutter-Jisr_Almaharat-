import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/core/helpers/app_regex.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/application/logic/cubit.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/widgets/app_text_form_field.dart';

class ApplictionForm extends StatefulWidget {
  late Job jobDetails;
  ApplictionForm({required this.jobDetails, super.key});

  @override
  State<ApplictionForm> createState() => _ApplictionFormState();
}

class _ApplictionFormState extends State<ApplictionForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  // late TextEditingController organizationNameController;

  @override
  void initState() {
    super.initState();
    // passwordController = context.read<SignupCubit>().passwordController;
    // setupPasswordControllerListener();
  }

  // void setupPasswordControllerListener() {
  //   passwordController.addListener(() {
  //     setState(() {
  //       hasLowercase = AppRegex.hasLowerCase(passwordController.text);
  //       hasUppercase = AppRegex.hasUpperCase(passwordController.text);
  //       hasSpecialCharacters =
  //           AppRegex.hasSpecialCharacter(passwordController.text);
  //       hasNumber = AppRegex.hasNumber(passwordController.text);
  //       hasMinLength = AppRegex.hasMinLength(passwordController.text);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ApplictionCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" Organization Information:",
              style: TextStyles.font13BlueRegular),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.abc_rounded),
            hintText: 'Org_Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Org_Name';
              }
            },
            controller:
                context.read<ApplictionCubit>().organizationNameController
                  ..text = widget.jobDetails.organizationName,
          ),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.email),
            hintText: 'Org_Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller:
                context.read<ApplictionCubit>().organizationEmailController
                  ..text = widget.jobDetails.organizationemail,
          ),
          verticalSpace(18),
          Text(" Applaction Information:", style: TextStyles.font13BlueRegular),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.abc_rounded),
            hintText: 'Job Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Name';
              }
            },
            controller: context.read<ApplictionCubit>().jobNameController
              ..text = widget.jobDetails.jopTitle,
          ),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.abc_rounded),
            hintText: 'Kind',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Kind';
              }
            },
            controller: context.read<ApplictionCubit>().kindController
              ..text = "Job",
          ),
          // verticalSpace(18),
          verticalSpace(18),
          Text("  Applicant Information:",
              style: TextStyles.font14BlueSemiBold),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.man_2),
            hintText: 'Appl_Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Appl_Name';
              }
            },
            controller: context.read<ApplictionCubit>().applicantNameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            suffixIcon: Icon(Icons.email),
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<ApplictionCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
              suffixIcon: Icon(Icons.phone),
              hintText: 'Phone  967XXX,XXX,XXX',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
              },
              controller: context.read<ApplictionCubit>().phoneController),
          // verticalSpace(18),
          // AppTextFormField(
          //   // controller: context.read<SignupCubit>().passwordController,
          //   hintText: 'Password',
          //   isObscureText: isPasswordObscureText,
          //   suffixIcon: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         isPasswordObscureText = !isPasswordObscureText;
          //       });
          //     },
          //     child: Icon(
          //       isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
          //       // Icons.visibility_off,
          //     ),
          //   ),
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Please enter a valid password';
          //     }
          //   },
          // ),
          // verticalSpace(18),
          // AppTextFormField(
          //   // controller:context.read<SignupCubit>().passwordConfirmationController,
          //   hintText: 'Password Confirmation',
          //   isObscureText: isPasswordConfirmationObscureText,
          //   suffixIcon: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         isPasswordConfirmationObscureText =
          //             !isPasswordConfirmationObscureText;
          //       });
          //     },
          //     child: Icon(
          //       // isPasswordConfirmationObscureText
          //       //     ? Icons.visibility_off
          //       //     : Icons.visibility,
          //       Icons.visibility,
          //     ),
          //   ),
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Please enter a valid password';
          //     }
          //   },
          // ),
          verticalSpace(24),
        ],
      ),
    );
  }
}
