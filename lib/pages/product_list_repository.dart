import 'package:flutter_riverpod/flutter_riverpod.dart';

// Entity
class Product {
  int id;
  String name;
  int price;

  Product(this.id, this.name, this.price);
}

// Provider
final productListProvider = StateNotifierProvider<ProductListRepository, List<Product>>((ref) {
  return ProductListRepository();
});

// Repository
class ProductListRepository extends StateNotifier<List<Product>>{

  ProductListRepository() : super([
    Product(1, "바나나", 1000),
    Product(2, "딸기", 2000),
    Product(3, "참외", 3000)
  ]); // 데이터 넣어줌

}