import 'package:jisr_almharat/core/networking/api_services.dart';
import 'package:jisr_almharat/features/companyProfile/logic/data/module/userprofile.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<UserProfile> fetchUserProfile() async {
    try {
      return await _apiService.getUserProfile('current');
    } catch (e) {
      throw 'Failed to load profile: ${e.toString()}';
    }
  }
}
