import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'accountinfo_event.dart';
part 'accountinfo_state.dart';

class AccountinfoBloc extends Bloc<AccountinfoEvent, AccountinfoState> {
  AccountinfoBloc() : super(AccountinfoInitial('Username', 'phone')) {
    on<GetUserDetailsEvent>((event, emit) {
      emit(AccountinfoState(event.name, event.phone));
    });
  }
}
