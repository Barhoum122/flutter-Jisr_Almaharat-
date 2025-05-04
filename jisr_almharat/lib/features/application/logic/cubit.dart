import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/features/application/data/module/appllcition_modul.dart';
import 'package:jisr_almharat/features/application/data/repos/application_Repo.dart';
import 'package:jisr_almharat/features/application/logic/state.dart';

class ApplictionCubit extends Cubit<ApplictionState> {
  final ApplicationRepository _repository;

  ApplictionCubit(this._repository) : super(ApplictionInitial());
  TextEditingController organizationNameController = TextEditingController();
  TextEditingController organizationEmailController = TextEditingController();
  TextEditingController kindController = TextEditingController();
  TextEditingController jobNameController = TextEditingController();
  TextEditingController applicantNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  // late List<Message> userData = [];
  // In auth_cubit.dart
  Future<void> submitApplication() async {
    emit(ApplictionLoading());

    final response = await _repository.submitApplication(
      ApplicationRequste(
        organizationName: organizationNameController.text,
        organizationEmail: organizationEmailController.text,
        kind: kindController.text,
        jobName: jobNameController.text,
        applicantName: applicantNameController.text,
        email: emailController.text,
        phone: phoneController.text,
      ),
    );

    if (response.message == true) {
      // Success handling
      emit(ApplictionSuccess(response));
    } else {
      // Error handling
      emit(ApplictionError("Error to create Application ${response.message}"));
    }
  }
}
