import 'package:either_dart/either.dart';
import '../../../../core/errors/faliure.dart';
import '../models/product.dart';

abstract class ProductRepo {
  Future<Either<Faliure,List<Product>>> fetchProducts();
}
