import 'package:bloc/bloc.dart';
import 'package:project2/models/servicemodel.dart';

part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(ServiceInitial([])) {
    on<GetAllServicesEvent>((event, emit) async {
      emit(ServiceState(event.serviceslist));
    });
  }
}
