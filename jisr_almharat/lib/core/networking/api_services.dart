import 'package:dio/dio.dart';
import 'package:jisr_almharat/features/application/data/module/application_response.dart';
import 'package:jisr_almharat/features/application/data/module/appllcition_modul.dart';
import 'package:jisr_almharat/features/companyProfile/logic/data/module/userprofile.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/notification/data/module/notification_model.dart';

import '../../features/login/data/module/api_LoginRequest .dart';

class ApiService {
  final baseUrl = 'http://127.0.0.1:8000/api/method/jisr_almaharat.api.';
  late Dio dio;
  ApiService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      headers: {'Content-Type': 'application/json'},
      receiveDataWhenStatusError: true,
      // connectTimeout: 20 * 1000, // 60 seconds,
      // receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }

  Future<NotificationModel> getNotifications(String userId) async {
    try {
      final response = await dio.get(
        'http://127.0.0.1:8000/api/method/jisr_almaharat.api.allApplication',
        queryParameters: {'email': userId},
      );
      print("\n\n hi ${userId}");
      return NotificationModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<JobModel> fetchJobInfo() async {
    try {
      final response = await dio.get('alljob');
      if (response.statusCode == 200) {
        // print(response.data.toString());
        return JobModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<TrainingModel> getTrainingInfo() async {
    try {
      final response = await dio.get('getTrainingInfo');
      if (response.statusCode == 200) {
        // print(response.data.toString());
        return TrainingModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<ApplicationResponse> submitApplication(
      ApplicationRequste application) async {
    try {
      final response = await dio.post(
        'http://127.0.0.1:8000/api/method/jisr_almaharat.api.new_apply',
        data: application.toJson(),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      // return response.data;
      return ApplicationResponse.fromJson(response.data);
    } on DioException catch (e) {
      return ApplicationResponse(message: false);
    } catch (e) {
      return ApplicationResponse(message: false);
    }
  }

  Future<ApiLoginresponse> login(LoginRequest request) async {
    try {
      print("\n\n ${request.username}");
      final response = await dio.post(
        'http://127.0.0.1:8000/api/method/jisr_almaharat.api.login',
        data: request.toJson(),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      return ApiLoginresponse.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  String _handleDioError(DioException e) {
    return e.response?.data?['message']?.toString() ??
        e.message ??
        'Authentication failed';
  }

  Future<UserProfile> getUserProfile(String userId) async {
    try {
      final response = await dio.get(
        'http://127.0.0.1:8000/api/method/jisr_almaharat.api.get_logged_user',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'token $getStoredToken', // Add your auth token
          },
        ),
      );
      return UserProfile.fromJson(response.data['message']);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  static String getStoredToken(String getStoredToken) {
    print("\n\n $getStoredToken");
    return getStoredToken;
  }
}
