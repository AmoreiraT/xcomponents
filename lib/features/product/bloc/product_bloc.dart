import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xcomponents/features/product/model/product_dto.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  Product _product = Product.empty();
  ProductBloc()
      : super(
          ProductDefaultState(
            product: Product.empty(),
          ),
        ) {
    on<ProductEvent>((event, emit) async {
      if (event is ProductEventUpdate) {
        _updateProduct(
          category: event.category,
          name: event.name,
          value: event.value,
        );
        emit(
          ProductDefaultState(product: _product),
        );
      }
    });
  }
  Product get product => _product;
  _updateProduct({
    String? name,
    String? category,
    double? value,
  }) {
    _product = _product.copyWith(
      categoryC: category,
      nameC: name,
      valueC: value,
    );
  }
}
