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
import 'package:project2/buisnesslogic/bloc/cartorders/cartorders_bloc.dart'
    as _i16;
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart' as _i17;
import 'package:project2/buisnesslogic/bloc/notification/notification_bloc.dart'
    as _i13;
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart'
    as _i14;
import 'package:project2/buisnesslogic/bloc/search/search_bloc.dart' as _i15;
import 'package:project2/domain/repos/i_noti_repo.dart' as _i7;
import 'package:project2/domain/repos/icartordersrepo.dart' as _i3;
import 'package:project2/domain/repos/ichatrepo.dart' as _i5;
import 'package:project2/domain/repos/ireviewrepo.dart' as _i9;
import 'package:project2/domain/repos/isearchrepo.dart' as _i11;
import 'package:project2/infrastructure/cartorders/cartordersrepo.dart' as _i4;
import 'package:project2/infrastructure/chat/chatresponserepo.dart' as _i6;
import 'package:project2/infrastructure/notification/notificationrepo.dart'
    as _i8;
import 'package:project2/infrastructure/review/reviewrepo.dart' as _i10;
import 'package:project2/infrastructure/search/searchrepo.dart' as _i12;

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
    gh.lazySingleton<_i3.ICartOrdersRepo>(() => _i4.CartOdersRepo());
    gh.lazySingleton<_i5.IChatResponseRepo>(() => _i6.ChatResponseRepo());
    gh.lazySingleton<_i7.INoitificationRepo>(() => _i8.NotificationRepo());
    gh.lazySingleton<_i9.IReviewRepo>(() => _i10.ReviewRepo());
    gh.lazySingleton<_i11.ISearchRepo>(() => _i12.SearchRepo());
    gh.factory<_i13.NotificationBloc>(
        () => _i13.NotificationBloc(gh<_i7.INoitificationRepo>()));
    gh.factory<_i14.ReviewblocBloc>(
        () => _i14.ReviewblocBloc(gh<_i9.IReviewRepo>()));
    gh.factory<_i15.SearchBloc>(() => _i15.SearchBloc(gh<_i11.ISearchRepo>()));
    gh.factory<_i16.CartordersBloc>(
        () => _i16.CartordersBloc(gh<_i3.ICartOrdersRepo>()));
    gh.factory<_i17.ChatsupportBloc>(
        () => _i17.ChatsupportBloc(gh<_i5.IChatResponseRepo>()));
    return this;
  }
}
