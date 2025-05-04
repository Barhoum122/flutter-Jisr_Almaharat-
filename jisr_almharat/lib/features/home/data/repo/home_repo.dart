import '../../../../core/networking/api_services.dart';
import '../model/training_jobs_model.dart';

class HomeRepo {
  late ApiService apiService;
  HomeRepo({required this.apiService});

  Future<JobModel> getJobInfo() async {
    return await apiService.fetchJobInfo();
  }

  Future<TrainingModel> getTrainingInfo() async {
    return await apiService.getTrainingInfo();
  }
}
