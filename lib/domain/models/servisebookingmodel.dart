import 'package:project2/domain/models/address/addressmodel.dart';
import 'package:project2/domain/models/service/servicemodel.dart';

class ServiceBookingModel {
  final DateTime date;
  final String userid;
  final String mobile;
  final String timeslote;
  final String username;
  final String requirments;
  final ServiceModel service;
  final AddressModel? address;
  final int id;

  ServiceBookingModel(
    this.date,
    this.userid,
    this.mobile,
    this.timeslote,
    this.username,
    this.requirments,
    this.service,
    this.id,
    this.address,
  );
}

class GetServicemodel {
  final String address;
  final String organiser;
  final String userid;
  final String date;
  final String mobile;
  final String timeslot;
  final String requirements;
  final ServiceModel service;
  final int id;
  final String status;

  GetServicemodel(
      this.organiser,
      this.userid,
      this.date,
      this.mobile,
      this.timeslot,
      this.requirements,
      this.service,
      this.id,
      this.address,
      this.status);
}
