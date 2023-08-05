part of 'paymentcubit_cubit.dart';

@freezed
class PaymentcubitState with _$PaymentcubitState {
  const factory PaymentcubitState() = _PaymentcubitState;

  const factory PaymentcubitState.paymentSuccessState(
      {required String paymentid}) = PaymentSuccessState;
  const factory PaymentcubitState.paymentFailedState() = _PaymentFailedState;
  factory PaymentcubitState.initial() => const PaymentcubitState();
}
