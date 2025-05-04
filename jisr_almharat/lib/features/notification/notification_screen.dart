// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:jisr_almharat/core/theming/colors.dart';
// import 'package:jisr_almharat/widgets/customs_appbar.dart';

// class NotificationScreen extends StatelessWidget {
//   final List<NotificationItem> notifications = [
//     NotificationItem(
//       title: "New Message",
//       description: "You have received a new message from Alex",
//       time: DateTime.now().subtract(Duration(minutes: 5)),
//       icon: Icons.message,
//       isRead: false,
//       color: Colors.blue,
//     ),
//     NotificationItem(
//       title: "Payment Received",
//       description: "\$250.00 has been deposited to your account",
//       time: DateTime.now().subtract(Duration(hours: 2)),
//       icon: Icons.attach_money,
//       isRead: true,
//       color: Colors.green,
//     ),
//     NotificationItem(
//       title: "Event Reminder",
//       description: "Team meeting starts in 15 minutes",
//       time: DateTime.now().subtract(Duration(days: 1)),
//       icon: Icons.calendar_today,
//       isRead: true,
//       color: Colors.orange,
//     ),
//     NotificationItem(
//       title: "Security Alert",
//       description: "New login from unknown device detected",
//       time: DateTime.now().subtract(Duration(days: 3)),
//       icon: Icons.security,
//       isRead: false,
//       color: Colors.red,
//     ),
//     NotificationItem(
//       title: "System Update",
//       description: "New version 2.4.1 is available",
//       time: DateTime.now().subtract(Duration(days: 5)),
//       icon: Icons.system_update,
//       isRead: true,
//       color: Colors.purple,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsManager.backgroundColor,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(kToolbarHeight),
//         child: CustomsAppBar(
//           tatle: "Notifications",
//           iconData: Icons.checklist_outlined,
//           colorwithOpacity: Color.fromARGB(255, 73, 167, 244),
//         ),
//       ),
//       body: ListView.builder(
//         padding: EdgeInsets.symmetric(vertical: 8),
//         itemCount: notifications.length,
//         itemBuilder: (context, index) {
//           return NotificationCard(notification: notifications[index]);
//         },
//       ),
//     );
//   }
// }

// class NotificationItem {
//   final String title;
//   final String description;
//   final DateTime time;
//   final IconData icon;
//   final bool isRead;
//   final Color color;

//   NotificationItem({
//     required this.title,
//     required this.description,
//     required this.time,
//     required this.icon,
//     required this.isRead,
//     required this.color,
//   });
// }

// class NotificationCard extends StatelessWidget {
//   final NotificationItem notification;

//   const NotificationCard({required this.notification});

//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: Key(notification.title),
//       background: Container(
//         color: Colors.red,
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.only(right: 20),
//         child: Icon(Icons.delete, color: Colors.white),
//       ),
//       secondaryBackground: Container(
//         color: Colors.green,
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.only(left: 20),
//         child: Icon(Icons.archive, color: Colors.white),
//       ),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//         decoration: BoxDecoration(
//           color: notification.isRead ? Colors.grey[100] : Colors.blue[50],
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 4,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             if (!notification.isRead)
//               Positioned(
//                 left: 8,
//                 top: 8,
//                 child: Container(
//                   width: 8,
//                   height: 8,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//               ),
//             ListTile(
//               contentPadding: EdgeInsets.all(12),
//               leading: Container(
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: notification.color.withOpacity(0.2),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   notification.icon,
//                   color: notification.color,
//                 ),
//               ),
//               title: Text(
//                 notification.title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: notification.isRead ? Colors.grey[700] : Colors.black,
//                 ),
//               ),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     notification.description,
//                     style: TextStyle(
//                       color:
//                           notification.isRead ? Colors.grey : Colors.grey[800],
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     DateFormat('MMM d, h:mm a').format(notification.time),
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               trailing: PopupMenuButton(
//                 icon: Icon(Icons.more_vert),
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     child: Text("Mark as read"),
//                     value: "read",
//                   ),
//                   PopupMenuItem(
//                     child: Text("Delete"),
//                     value: "delete",
//                   ),
//                 ],
//               ),
//               onTap: () {
//                 // Handle notification tap
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
