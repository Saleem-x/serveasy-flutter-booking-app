part of 'service_bloc.dart';

class ServiceState {
  final List<ServiceModel> serviceslist;

  ServiceState(this.serviceslist);
}

class ServiceInitial extends ServiceState {
  ServiceInitial(super.serviceslist);
}
