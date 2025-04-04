class JobModel {
  final List<Job> message;

  JobModel({required this.message});

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      message:
          (json['message'] as List).map((item) => Job.fromJson(item)).toList(),
    );
  }
}

class Job {
  final String name;
  final String jopTitle;
  final String applicationDeadline;
  final String organizationName;
  final String jopType;
  final String jopDescription;
  final String image;

  Job({
    required this.name,
    required this.jopTitle,
    required this.applicationDeadline,
    required this.organizationName,
    required this.jopType,
    required this.jopDescription,
    required this.image,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      name: json['name'],
      jopTitle: json['jop_title'],
      applicationDeadline: json['aplication_deadline'],
      organizationName: json['organization_name'],
      jopType: json['jop_type'],
      jopDescription: json['jop_description'],
      image: json['image'],
    );
  }
}

class TrainingModel {
  final List<Training> message;

  TrainingModel({required this.message});

  factory TrainingModel.fromJson(Map<String, dynamic> json) {
    return TrainingModel(
      message: (json['message'] as List)
          .map((item) => Training.fromJson(item))
          .toList(),
    );
  }
}

class Training {
  final String id;
  final String title;
  final String description;
  final String state;
  final String pattren;
  final String organizationName;
  // final String? imageUrl;

  Training({
    required this.id,
    required this.title,
    required this.description,
    required this.state,
    required this.pattren,
    required this.organizationName,
    // this.imageUrl,
  });

  factory Training.fromJson(Map<String, dynamic> json) {
    return Training(
      id: json['name'],
      title: json['training_title'],
      description: json['about_training'],
      state: json['training_status'],
      pattren: json['training_pattren'],
      organizationName: json['organization_name'],
      // imageUrl: json['image_url'],
    );
  }
}
