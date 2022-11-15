import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state/pages/product.dart';

// Provider
final productProvider = StateNotifierProvider<ProductRepository, Product>((ref) {
  return ProductRepository();
});

// Repository
class ProductRepository extends StateNotifier<Product>{

  ProductRepository() : super(Product(1, "바나나", 1000)); // 데이터 넣어줌

}