import 'package:fashion/model/productmodel.dart';
import 'package:fashion/service/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends StateNotifier<List<ProductModel>> {
  ProductNotifier() : super([]);

  Future<ProductModel> fetchProducts() async {
    try {
      final productList = await ApiService.fetchProduct();
      state = productList;
      return productList.isNotEmpty ? productList.first : throw Exception('No products found');
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  // Future<void> createProduct(Map<String, dynamic> productData) async {
  //   try {
  //     await ApiService.createProduct(productData);
  //   } catch (e) {
  //     throw Exception('Error creating product: $e');
  //   }
  // }
}

final productProvider =
    StateNotifierProvider<ProductNotifier, List<ProductModel>>((ref) {
  return ProductNotifier();
});
