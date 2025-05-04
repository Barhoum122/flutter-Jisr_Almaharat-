import 'package:flutter/material.dart';
import 'package:jisr_almharat/features/notification/data/module/notification_model.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  final VoidCallback onTap;

  const MessageCard({
    super.key,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: message.isRead
          ? const Color.fromARGB(255, 255, 252, 252)
          : Color.fromARGB(255, 255, 255, 255),
      child: ListTile(
        leading: _buildLeadingIcon(),
        title: Text(
          _getTitle(),
          style: TextStyle(
              fontWeight: message.isRead ? FontWeight.normal : FontWeight.bold,
              color: Color.fromARGB(255, 12, 13, 13)),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (message.kind == "Job")
              if (message.kind != null) Text('Type: ${message.kind}'),
            // if (message.applicantName != null)
            //   Text('Applicant: ${message.applicantName}'),
            // if (message.jobName != null) Text('Job: ${message.jobName}'),
            if (message.workflowState != null)
              Text('Status: ${message.workflowState}'),

            if (message.organizationname != null)
              Text('Company_Name   : ${message.organizationname}'),
            if (message.kind == "Training")
              if (message.kind != null) Text('Type   : ${message.kind}'),
            if (message.trainingName != null)
              Text('Name : ${message.trainingName}'),
            // if (message.workflowState != null)
            //   Text('Status: ${message.workflowState}'),
          ],
        ),
        // trailing: !message.isRead
        //     ? const Icon(Icons.brightness_1,
        //         size: 12, color: Color.fromARGB(255, 206, 4, 18))
        //     : null,
        // onTap: onTap,
      ),
    );
  }

  Widget _buildLeadingIcon() {
    IconData icon;
    Color color;

    switch (message.workflowState) {
      case 'Approved':
        icon = Icons.school;
        color = Colors.green;
        break;
      case 'Rejected':
        icon = Icons.mail_lock;
        color = Color.fromARGB(255, 246, 8, 28);
        break;
      case 'Approval Pending':
        icon = Icons.timelapse_rounded;
        color = Colors.orange;
        break;
      default:
        icon = Icons.notifications;
        color = Colors.purple;
    }

    return CircleAvatar(
      backgroundColor: color.withOpacity(0.2),
      child: Icon(icon, color: color, size: 20),
    );
  }

  String _getTitle() {
    if (message.jobName != null) return message.jobName!;
    if (message.jobName != null) return message.jobName!;
    if (message.trainingName != null) return message.trainingName!;
    if (message.applicantName != null) return message.applicantName!;
    return 'New Notification';
  }
}
