
import 'package:dio/dio.dart';
import 'package:fashion/config/index/index.dart';
import 'package:fashion/model/productmodel.dart';

class ApiService {
  static final Dio _dio = Dio();

 static Future<List<ProductModel>> fetchProduct() async {
    try {
    var response = await _dio.get('https://dummyjson.com/products');

      if (response.statusCode == 200) {
        List<dynamic> result = response.data;
        List<ProductModel> product =
            result.map((json) => ProductModel.fromJson(json)).toList();
        return product;
      } else {
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
      return [];
    }
  }

}