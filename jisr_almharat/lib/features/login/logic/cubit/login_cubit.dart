import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/features/login/logic/cubit/login_state.dart';
import '../../data/module/api_LoginRequest .dart';
import '../../data/repos/login_Repository.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _repository;

  LoginCubit(this._repository) : super(AuthInitial());
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> login() async {
    emit(AuthLoading());
    try {
      final response = await _repository.login(
        LoginRequest(
            username: usernameController.text,
            password: passwordController.text),
      );

      if (response.message?.successKey == 1) {
        emit(AuthSuccess(response));
      } else if (response.message?.successKey == 0) {
        emit(MsError("User Name Or Password Not Corect"));
      }
    } catch (e) {
      emit(MsError("Email or Password Not Corect"));
    }
  }
}
