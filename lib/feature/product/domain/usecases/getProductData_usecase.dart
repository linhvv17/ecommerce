
import 'package:ecommerce/feature/product/domain/entities/product_entity.dart';
import 'package:ecommerce/feature/product/domain/repositories/product_repository.dart';

import '../../data/models/product_model_custom.dart';

class GetProductDataUseCase {
  final ProductRepository repository;
  GetProductDataUseCase({required this.repository});

  Future<List<ProductEntity>> getProductData(String filename) async {
    return repository.getProductData(filename);
  }
  Future<List<ProductModelCustom>> getProductDataCustom(String filename) async {
    return repository.getProductDataCustom(filename);
  }
}
