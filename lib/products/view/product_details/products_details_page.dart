import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/products/view/product_details/cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:erni_test/core/utils/custom_extensions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.id});
  final int id;
  static const String routeName = 'product-details';

  static ModalRoute<void> route(int id) {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductDetails(id: id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(id),
      child: Scaffold(
        appBar: AppBar(title: Text('Item Details')),
        body: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error), duration: Duration(seconds: 2)),
                  );
                });
          },
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => Center(child: CircularProgressIndicator()),
                orElse: () => SizedBox(),
                sucecss: (product) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.network(product?.thumbnail ?? ''),
                      Text(
                        product?.title?.toUpperCase() ?? '',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        '\$ ${product?.price?.getStringValue()}',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '% ${product?.discountPercentage?.getStringValue()}',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '${product?.stock?.getStringValue()} items left',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 16),
                      imageCarousel(product),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }

  Widget imageCarousel(ProductDto? productDto) {
    if (productDto?.images?.isNotEmpty ?? false) {
      return Container(
        height: 200,
        width: Size.infinite.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: productDto!.images!.map((element) {
            return Card(
              child: Container(
                width: 100,
                height: 100,
                child: Image.network(
                  element,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
        ),
      );
    }
    return SizedBox();
  }
}
