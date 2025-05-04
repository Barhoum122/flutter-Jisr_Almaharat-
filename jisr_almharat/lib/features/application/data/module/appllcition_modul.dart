class ApplicationRequste {
  final String organizationName;
  final String organizationEmail;
  final String kind;
  final String jobName;
  final String applicantName;
  final String email;
  final String phone;

  ApplicationRequste({
    required this.organizationName,
    required this.organizationEmail,
    required this.kind,
    required this.jobName,
    required this.applicantName,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() => {
        'organization_name': organizationName,
        'organization_email': organizationEmail,
        'kind': kind,
        'job_name': jobName,
        'applicant_name': applicantName,
        'email': email,
        'phone': phone,
      };
}
