import 'package:jisr_almharat/core/networking/api_services.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginRequest%20.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<ApiLoginresponse> login(LoginRequest request) async {
    try {
      return await _apiService.login(request);
    } catch (e) {
      throw e.toString();
    }
  }
}
