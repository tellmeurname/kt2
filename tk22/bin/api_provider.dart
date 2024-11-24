import 'package:dio/dio.dart';
import 'models/cart_model.dart';

abstract class Paths{
  static const products = "carts";
}

class ApiProvider {
  final Dio _client = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com/'));

  Future<List<CartModel>> getCarts() async {
      final response = await _client.get(Paths.products);
      final cartsJsonList = response.data as List<dynamic>;
      final result = cartsJsonList.map((e) => CartModel.fromJson(e)).toList();
      return result;
  }
}  