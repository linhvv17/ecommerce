import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ecommerce/feature/product/domain/entities/carousel_entity.dart';
import 'package:ecommerce/feature/product/domain/entities/product_entity.dart';
import 'package:ecommerce/feature/product/domain/usecases/addto_cart_usecase.dart';
import 'package:ecommerce/feature/product/domain/usecases/delete_cart_item.dart';
import 'package:ecommerce/feature/product/domain/usecases/getCarouselData_usecase.dart';
import 'package:ecommerce/feature/product/domain/usecases/getProductData_usecase.dart';
import 'package:ecommerce/feature/product/domain/usecases/order_product_usecase.dart';
import 'package:ecommerce/injection_container.dart';

import '../../../data/models/product_model_custom.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  Future<List<ProductEntity>> getProductData(String filename) async {
    return await locator.call<GetProductDataUseCase>().getProductData(filename);
  }

  Future<List<CarouselEntity>> getCarouselData() async {
    return await locator.call<GetCarouselDataUseCase>().getCarouselData();
  }

  Future<void> addToCart(Map<String, String> cartProductData) async {
    emit(AddingCartState());
    await locator.call<AddtoCartUseCase>().addtoCartUsecase(cartProductData);
    emit(AddedCartSuccess());
  }

  Future<void> orderProduct() async {
    await locator
        .call<OrderProductUseCase>()
        .orderProductUsecase();
  }

  Future<void> deleteCartProduct(String id) async {
    await locator.call<DeleteCartItemUseCase>().delete_cart_item_usecase(id);
  }


  Future<List<ProductModelCustom>> getProductDataCustom(String filename) async {
    return await locator.call<GetProductDataUseCase>().getProductDataCustom(filename);
  }
}
