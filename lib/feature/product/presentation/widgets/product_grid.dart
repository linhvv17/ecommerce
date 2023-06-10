import 'package:ecommerce/feature/product/domain/entities/product_entity.dart';
import 'package:ecommerce/feature/product/presentation/bloc/cubit/product_cubit.dart';
import 'package:ecommerce/feature/product/presentation/widgets/back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/product_model_custom.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  String jsonPath;
  String title;
  ProductGrid(this.jsonPath, this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title),
      body:
      FutureBuilder(
          future: BlocProvider.of<ProductCubit>(context)
              .getProductDataCustom(title),
          builder:
              (context, AsyncSnapshot<List<ProductModelCustom>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black87,
                  strokeWidth: 7,
                ),
              );
            } else {
              return GridView.builder(
                  itemCount: snapshot.data?.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .65,
                      crossAxisCount: 2,
                      crossAxisSpacing: 7
                  ),
                  itemBuilder: (context, index) => ProductCard(
                    title: snapshot.data![index].title,
                    price: snapshot.data![index].price,
                    image_url: [
                      snapshot.data![index].url0,
                      snapshot.data![index].url1,
                      snapshot.data![index].url2,
                      snapshot.data![index].url3,
                      snapshot.data![index].url4,
                      snapshot.data![index].url5,
                    ],
                    category: snapshot.data![index].category,));
            }
          }),
      // FutureBuilder(
      //     future:
      //         BlocProvider.of<ProductCubit>(context).getProductData(jsonPath),
      //     builder: (context, AsyncSnapshot<List<ProductEntity>> snapshot) {
      //       if (snapshot.connectionState == ConnectionState.waiting) {
      //         return const Center(
      //           child: CircularProgressIndicator(
      //             color: Colors.black87,
      //             strokeWidth: 7,
      //           ),
      //         );
      //       } else {
      //         return GridView.builder(
      //             itemCount: snapshot.data!.length,
      //             scrollDirection: Axis.vertical,
      //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 childAspectRatio: .65,
      //                 crossAxisCount: 2,
      //                 crossAxisSpacing: 7),
      //             itemBuilder: (context, index) => ProductCard(
      //                 title: snapshot.data![index].title,
      //                 price: snapshot.data![index].price,
      //                 image_url: snapshot.data![index].url,
      //                 category: snapshot.data![index].category));
      //       }
      //     }),
    );
  }
}
