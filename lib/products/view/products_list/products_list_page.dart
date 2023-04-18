import 'package:erni_test/products/view/product_details/products_details_page.dart';
import 'package:erni_test/products/view/products_list/cubit/product_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:erni_test/core/utils/custom_extensions.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({super.key});

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      context.read<ProductListCubit>().fetchProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: BlocBuilder<ProductListCubit, ProductListState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const SizedBox(),
            finished: (_, products) {
              return ListView.builder(
                controller: _scrollController,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, ProductDetails.route(products[index].id ?? 0));
                        },
                        child: ListTile(
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Image.network(
                              products[index].thumbnail ?? '',
                              fit: BoxFit.cover,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                products[index].title?.toUpperCase() ?? '',
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                '\$ ${products[index].price.getStringValue()}',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '% ${products[index].discountPercentage.getStringValue()}',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '${products[index].stock.getStringValue()} items left',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
