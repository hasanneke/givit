import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/address/address.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/widget/product_item_view.dart';
part './widget/home_app_bar.dart';
part './widget/home_categories_view.dart';
part './widget/home_products_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FilterChip.elevated(
                  label: Text(ProductCategory.dummy[index].name),
                  onSelected: (value) {},
                ),
                separatorBuilder: (context, index) => const Gap(8),
                itemCount: ProductCategory.dummy.length,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: Product.dummy.length,
                itemBuilder: (context, index) => ProductItemView(
                  product: Product.dummy[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
