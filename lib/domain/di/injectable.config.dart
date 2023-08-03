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
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart' as _i8;
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart' as _i7;
import 'package:project2/domain/repos/ichatrepo.dart' as _i3;
import 'package:project2/domain/repos/ireviewrepo.dart' as _i5;
import 'package:project2/infrastructure/chat/chatresponserepo.dart' as _i4;
import 'package:project2/infrastructure/review/reviewrepo.dart' as _i6;

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
    gh.lazySingleton<_i5.IReviewRepo>(() => _i6.ReviewRepo());
    gh.factory<_i7.ReviewblocBloc>(
        () => _i7.ReviewblocBloc(gh<_i5.IReviewRepo>()));
    gh.factory<_i8.ChatsupportBloc>(
        () => _i8.ChatsupportBloc(gh<_i3.IChatResponseRepo>()));
    return this;
  }
}
