import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choicechips_state.dart';
part 'choicechips_cubit.freezed.dart';

class ChoicechipsCubit extends Cubit<ChoicechipsState> {
  ChoicechipsCubit() : super(ChoicechipsState.initial());

  void changesearchdivision(String division) {
    if (division == 'Service') {
      emit(const ChoicechipsState(isService: true));
    } else {
      emit(const ChoicechipsState(isService: false));
    }
  }
}
