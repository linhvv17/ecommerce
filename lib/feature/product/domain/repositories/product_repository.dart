import 'dart:io';

import 'package:ecommerce/feature/product/domain/entities/carousel_entity.dart';
import 'package:ecommerce/feature/product/domain/entities/product_entity.dart';

import '../../data/models/product_model_custom.dart';


abstract class ProductRepository {
  Future<List<ProductEntity>> getProductData(String filename);
  Future<List<ProductModelCustom>> getProductDataCustom(String filename);
  Future<List<CarouselEntity>> getCarouselData();
  
  Future<void> addtoCart(Map<String, String> cartProductData);
  Future<void> deleteCartItem(String id);
  Future<void> orderProduct();
}
