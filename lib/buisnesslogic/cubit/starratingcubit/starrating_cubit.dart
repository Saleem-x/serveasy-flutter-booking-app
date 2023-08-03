import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'starrating_state.dart';
part 'starrating_cubit.freezed.dart';

class StarratingCubit extends Cubit<StarratingState> {
  StarratingCubit() : super(StarratingState.initial());

  void selectstar(int starcount) {
    emit(StarratingState(rating: starcount));
  }

  void sendreview() {}
}
