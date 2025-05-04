import 'package:jisr_almharat/core/networking/api_services.dart';
import 'package:jisr_almharat/features/notification/data/module/notification_model.dart';

class NotificationRepositoryImpl {
  final ApiService apiService;

  NotificationRepositoryImpl({required this.apiService});

  @override
  Future<NotificationModel> getNotifications(String userId) async {
    return await apiService.getNotifications(userId);
  }
}
