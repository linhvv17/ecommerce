



import 'package:ecommerce/feature/product/domain/repositories/product_repository.dart';

class AddtoCartUseCase {
  final ProductRepository repository;
  AddtoCartUseCase({required this.repository});

  Future<void> addtoCartUsecase(Map<String, String> cartProductData) async {
    return repository.addtoCart(cartProductData);
  }
}
