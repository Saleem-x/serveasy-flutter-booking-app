part of 'buynowselection_bloc.dart';

@immutable
abstract class BuynowselectionEvent {}

class AddressSelectionEvent extends BuynowselectionEvent {
  final AddressModel address;
  AddressSelectionEvent(this.address);
}

class PaymentselctionEvent extends BuynowselectionEvent {
  final String paymentmethod;
  PaymentselctionEvent(this.paymentmethod);
}

class ItemCountIncriment extends BuynowselectionEvent {
  final int count;

  ItemCountIncriment(this.count);
}

class ItemCountDecriment extends BuynowselectionEvent {
  final int count;

  ItemCountDecriment(this.count);
}

class GetAddressEvent extends BuynowselectionEvent {
  final List<AddressModel> addresslist;

  GetAddressEvent(this.addresslist);
}

class BuyNowLoadingEvent extends BuynowselectionEvent {
  final bool isLoading;

  BuyNowLoadingEvent(this.isLoading);
}
