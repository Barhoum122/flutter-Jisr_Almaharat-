import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/features/notification/data/module/notification_model.dart';
import 'package:jisr_almharat/features/notification/logic/cubit/notificationState.dart';

import '../../data/repo/notificationRepositoryImpl.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepositoryImpl repository;
  final String userId;

  NotificationCubit({
    required this.repository,
    required this.userId,
  }) : super(NotificationInitial());

  Future<void> loadNotifications() async {
    emit(NotificationLoading());
    try {
      final notificationModel = await repository.getNotifications(userId);
      emit(NotificationLoaded(notificationModel: notificationModel));
    } catch (e) {
      emit(NotificationError(message: e.toString()));
    }
  }

  markAsRead(Message message) {}
}
