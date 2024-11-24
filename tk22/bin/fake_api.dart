import 'api_provider.dart';

void main(List<String> arguments) async {
  final apiProvider = ApiProvider();
  final carts = await apiProvider.getCarts();
  print(carts);
}