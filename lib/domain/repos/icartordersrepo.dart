import 'package:dartz/dartz.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/cartordersmodel/cartordersmodel.dart';

abstract class ICartOrdersRepo {
  Future<Either<MainFailures, List<CartOrderModel>>> getcartorders();
}
