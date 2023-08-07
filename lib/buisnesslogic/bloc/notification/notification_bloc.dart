import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/notificatication.dart/notificationmodel.dart';
import 'package:project2/domain/repos/i_noti_repo.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INoitificationRepo iNoitificationRepo;
  NotificationBloc(this.iNoitificationRepo)
      : super(NotificationState.initial()) {
    on<Getnotifications>(
      (event, emit) async {
        emit(const _loadingState());
        Either<MainFailures, List<NotificationModel>> notificationslist =
            await iNoitificationRepo.getNotifications();

        emit(
          notificationslist.fold(
            (l) => const _failedtoget(),
            (r) => _havenotification(notificationlist: r),
          ),
        );
      },
    );
  }
}
