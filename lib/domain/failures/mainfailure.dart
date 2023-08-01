import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainfailure.freezed.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientfailure() = Clientfailure;
  const factory MainFailures.serverfailure() = Serverfailure;
}
