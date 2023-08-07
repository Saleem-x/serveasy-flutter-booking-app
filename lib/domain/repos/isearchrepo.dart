import 'package:dartz/dartz.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:project2/domain/models/service/servicemodel.dart';

abstract class ISearchRepo {
  Future<Either<MainFailures, List<ServiceModel>>> searvicesearch(String query);
  Future<Either<MainFailures, List<ProductModel>>> productsearch(String query);
}
