part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class ProductEventUpdate extends ProductEvent {
  final String? name;
  final String? category;
  final double? value;

  ProductEventUpdate({
    this.category,
    this.name,
    this.value,
  });
}
