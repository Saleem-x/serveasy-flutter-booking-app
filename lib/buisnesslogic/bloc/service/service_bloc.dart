import 'package:bloc/bloc.dart';
import 'package:project2/domain/models/service/servicemodel.dart';

part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(ServiceInitial(null)) {
    on<GetAllServicesEvent>((event, emit) async {
      emit(ServiceState(event.serviceslist));
    });
  }
}
