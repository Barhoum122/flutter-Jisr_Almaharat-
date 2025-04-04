


// class SignupRepo {
//   final ApiService _apiService;

//   SignupRepo(this._apiService);

//   Future<ApiResult<SignupResponse>> signup(
//       SignupRequestBody signupRequestBody) async {
//     try {
//       final response = await _apiService.signup(signupRequestBody);
//       return ApiResult.success(response);
//     } catch (errro) {
//       return ApiResult.failure(ErrorHandler.handle(errro));
//     }
//   }
// }