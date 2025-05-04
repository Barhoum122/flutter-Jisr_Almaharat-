import 'package:dio/dio.dart';
import 'package:jisr_almharat/core/networking/api_services.dart';
import 'package:jisr_almharat/features/application/data/module/application_response.dart';
import 'package:jisr_almharat/features/application/data/module/appllcition_modul.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginRequest%20.dart';

class ApplicationRepository {
  final ApiService _apiService;

  ApplicationRepository(this._apiService);

  Future<ApplicationResponse> submitApplication(
      ApplicationRequste request) async {
    final response = await _apiService.submitApplication(request);
    return response;
  }
}
