import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/notification/data/module/notification_model.dart';
import 'package:jisr_almharat/features/notification/logic/cubit/notificationCubit.dart';
import 'package:jisr_almharat/features/notification/logic/cubit/notificationState.dart';
import 'package:jisr_almharat/features/notification/widgets/messageCard.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class NotificationScreen extends StatelessWidget {
  final String userId;

  const NotificationScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "Notifications",
          iconData: Icons.checklist_outlined,
          colorwithOpacity: Color.fromARGB(255, 73, 167, 244),
          onPressedleft: () {
            context.read<NotificationCubit>().loadNotifications();
          },
        ),
      ),
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is NotificationError) {
            return Center(child: Text(state.message));
          } else if (state is NotificationLoaded) {
            return NotificationListView(
              messages: state.notificationModel.messages,
              onRefresh: () =>
                  context.read<NotificationCubit>().loadNotifications(),
            );
          }
          return const Center(child: Text('No notifications available'));
        },
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  final List<Message> messages;
  final Future<void> Function() onRefresh;

  const NotificationListView({
    super.key,
    required this.messages,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return MessageCard(
            message: message,
            onTap: () => context.read<NotificationCubit>().markAsRead(message),
          );
        },
      ),
    );
  }
}
