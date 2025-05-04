class NotificationModel {
  final List<Message> messages;
  final DateTime? lastUpdated;

  NotificationModel({
    required this.messages,
    this.lastUpdated,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    final messages = json['message'] != null
        ? (json['message'] as List).map((v) => Message.fromJson(v)).toList()
        : <Message>[];

    return NotificationModel(
      messages: messages,
      lastUpdated: DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': messages.map((v) => v.toJson()).toList(),
      'last_updated': lastUpdated?.toIso8601String(),
    };
  }

  NotificationModel copyWith({
    List<Message>? messages,
    DateTime? lastUpdated,
  }) {
    return NotificationModel(
      messages: messages ?? this.messages,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}

class Message {
  final String? name;
  final String? kind;
  final String? jobName;
  final String? email;
  final String? trainingName;
  final String? applicantName;
  final String? workflowState;
  final String? organizationname;
  bool isRead;

  Message({
    this.name,
    this.kind,
    this.jobName,
    this.email,
    this.trainingName,
    this.applicantName,
    this.workflowState,
    this.organizationname,
    this.isRead = false,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      name: json['name'],
      kind: json['kind'],
      jobName: json['job_name'],
      email: json['email'],
      trainingName: json['training_name'],
      applicantName: json['applicant_name'],
      workflowState: json['workflow_state'],
      organizationname: json['organization_name'],
      isRead: json['is_read'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'kind': kind,
      'job_name': jobName,
      'email': email,
      'training_name': trainingName,
      'applicant_name': applicantName,
      'workflow_state': workflowState,
      'organization_name': organizationname,
      'is_read': isRead,
    };
  }

  Message copyWith({
    String? name,
    String? kind,
    String? jobName,
    String? email,
    String? trainingName,
    String? applicantName,
    String? workflowState,
    String? organizationname,
    bool? isRead,
  }) {
    return Message(
      name: name ?? this.name,
      kind: kind ?? this.kind,
      jobName: jobName ?? this.jobName,
      email: email ?? this.email,
      trainingName: trainingName ?? this.trainingName,
      applicantName: applicantName ?? this.applicantName,
      workflowState: workflowState ?? this.workflowState,
      organizationname: organizationname ?? this.organizationname,
      isRead: isRead ?? this.isRead,
    );
  }
}
