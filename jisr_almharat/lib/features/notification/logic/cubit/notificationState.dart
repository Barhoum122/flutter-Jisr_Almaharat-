import '../../data/module/notification_model.dart';

abstract class NotificationState {
  const NotificationState();
  List<Object?> get props => [];
}

class NotificationInitial extends NotificationState {}

class NotificationLoading extends NotificationState {}

class NotificationLoaded extends NotificationState {
  final NotificationModel notificationModel;

  const NotificationLoaded({required this.notificationModel});

  @override
  List<Object?> get props => [notificationModel];
}

class NotificationError extends NotificationState {
  final String message;

  const NotificationError({required this.message});

  @override
  List<Object?> get props => [message];
}
