import 'package:project2/models/servicemodel.dart';

class ServiceBookingModel {
  final DateTime date;
  final String userid;
  final String mobile;
  final String timeslote;
  final String username;
  final String requirments;
  final ServiceModel service;
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
  );
}

class GetServicemodel {
  final String organiser;
  final String userid;
  final String date;
  final String mobile;
  final String timeslot;
  final String requirements;
  final String serviceid;
  final int id;

  GetServicemodel(this.organiser, this.userid, this.date, this.mobile,
      this.timeslot, this.requirements, this.serviceid, this.id);
}
