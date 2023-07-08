part of 'service_bloc.dart';

class ServiceEvent {}

class GetAllServicesEvent extends ServiceEvent {
  final List<ServiceModel> serviceslist;

  GetAllServicesEvent(this.serviceslist);
}
