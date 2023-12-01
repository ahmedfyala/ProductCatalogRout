import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task1_rout/fetures/products/data/models/product.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
}
