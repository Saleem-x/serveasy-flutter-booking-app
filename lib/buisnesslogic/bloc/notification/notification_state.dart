part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState() = _NotificationState;
  const factory NotificationState.loadingState() = _loadingState;
  const factory NotificationState.havenotification(
      {required List<NotificationModel>? notificationlist}) = _havenotification;
  const factory NotificationState.failedtoget() = _failedtoget;
  factory NotificationState.initial() => const _NotificationState();
}
