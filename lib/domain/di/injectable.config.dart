// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart' as _i14;
import 'package:project2/buisnesslogic/bloc/notification/notification_bloc.dart'
    as _i11;
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart'
    as _i12;
import 'package:project2/buisnesslogic/bloc/search/search_bloc.dart' as _i13;
import 'package:project2/domain/repos/i_noti_repo.dart' as _i5;
import 'package:project2/domain/repos/ichatrepo.dart' as _i3;
import 'package:project2/domain/repos/ireviewrepo.dart' as _i7;
import 'package:project2/domain/repos/isearchrepo.dart' as _i9;
import 'package:project2/infrastructure/chat/chatresponserepo.dart' as _i4;
import 'package:project2/infrastructure/notification/notificationrepo.dart'
    as _i6;
import 'package:project2/infrastructure/review/reviewrepo.dart' as _i8;
import 'package:project2/infrastructure/search/searchrepo.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IChatResponseRepo>(() => _i4.ChatResponseRepo());
    gh.lazySingleton<_i5.INoitificationRepo>(() => _i6.NotificationRepo());
    gh.lazySingleton<_i7.IReviewRepo>(() => _i8.ReviewRepo());
    gh.lazySingleton<_i9.ISearchRepo>(() => _i10.SearchRepo());
    gh.factory<_i11.NotificationBloc>(
        () => _i11.NotificationBloc(gh<_i5.INoitificationRepo>()));
    gh.factory<_i12.ReviewblocBloc>(
        () => _i12.ReviewblocBloc(gh<_i7.IReviewRepo>()));
    gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(gh<_i9.ISearchRepo>()));
    gh.factory<_i14.ChatsupportBloc>(
        () => _i14.ChatsupportBloc(gh<_i3.IChatResponseRepo>()));
    return this;
  }
}
