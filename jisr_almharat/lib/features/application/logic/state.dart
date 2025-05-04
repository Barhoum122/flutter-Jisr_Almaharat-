import 'package:jisr_almharat/features/application/data/module/application_response.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';

abstract class ApplictionState {
  const ApplictionState();
}

class ApplictionInitial extends ApplictionState {}

class ApplictionLoading extends ApplictionState {}

class ApplictionSuccess extends ApplictionState {
  final ApplicationResponse Data;
  const ApplictionSuccess(this.Data);
}

class ApplictionError extends ApplictionState {
  final String error;
  const ApplictionError(this.error);
}

class MsError extends ApplictionState {
  final String mserror;
  const MsError(this.mserror);
}
