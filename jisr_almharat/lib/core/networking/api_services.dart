import 'package:dio/dio.dart';
import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';

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
        print(response.data.toString());
        return TrainingModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
