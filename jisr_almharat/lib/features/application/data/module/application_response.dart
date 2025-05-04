class ApplicationResponse {
  bool? message;

  ApplicationResponse({this.message});

  ApplicationResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = this.message;
    return data;
  }
}
