import 'package:either_dart/src/either.dart';
import 'package:task1_rout/core/errors/faliure.dart';
import 'package:task1_rout/fetures/products/data/models/product.dart';
import 'package:task1_rout/fetures/products/data/repos/product_repo.dart';

class ProductRepoimpl implements ProductRepo{
  @override
  Future<Either<Faliure, List<Product>>> fetchProducts() {

  }


}