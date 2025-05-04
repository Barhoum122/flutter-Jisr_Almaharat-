class ApiLoginresponse {
  Message? message;
  String? homePage;
  String? fullName;

  ApiLoginresponse({this.message, this.homePage, this.fullName});

  ApiLoginresponse.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
    homePage = json['home_page'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    data['home_page'] = this.homePage;
    data['full_name'] = this.fullName;
    return data;
  }
}

class Message {
  int? successKey;
  String? message;
  String? sid;
  String? apiKey;
  String? apiSecret;
  String? username;
  String? fullName;
  String? email;
  List<String>? roles;

  Message(
      {this.successKey,
      this.message,
      this.sid,
      this.apiKey,
      this.apiSecret,
      this.username,
      this.fullName,
      this.email,
      this.roles});

  Message.fromJson(Map<String, dynamic> json) {
    successKey = json['success_key'];
    message = json['message'];
    sid = json['sid'];
    apiKey = json['api_key'];
    apiSecret = json['api_secret'];
    username = json['username'];
    fullName = json['Full_Name'];
    email = json['email'];
    roles = json['roles'].cast<String>();
  }

  get isRead => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success_key'] = this.successKey;
    data['message'] = this.message;
    data['sid'] = this.sid;
    data['api_key'] = this.apiKey;
    data['api_secret'] = this.apiSecret;
    data['username'] = this.username;
    data['Full_Name'] = this.fullName;
    data['email'] = this.email;
    data['roles'] = this.roles;
    return data;
  }
}
