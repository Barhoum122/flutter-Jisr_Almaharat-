import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';

abstract class LoginState {
  const LoginState();
}

class AuthInitial extends LoginState {}

class AuthLoading extends LoginState {}

class AuthSuccess extends LoginState {
  final ApiLoginresponse userData;
  const AuthSuccess(this.userData);
}

class AuthError extends LoginState {
  final String error;
  const AuthError(this.error);
}

class MsError extends LoginState {
  final String mserror;
  const MsError(this.mserror);
}
