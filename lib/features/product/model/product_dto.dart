import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final double value;

  Product({
    required this.category,
    required this.name,
    required this.value,
  });
  Product.empty({
    this.category = '',
    this.name = '',
    this.value = 0.0,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        value,
      ];

  Product copyWith({
    String? nameC,
    String? categoryC,
    double? valueC,
  }) {
    return Product(
      category: categoryC ?? category,
      name: nameC ?? name,
      value: valueC ?? value,
    );
  }
}
