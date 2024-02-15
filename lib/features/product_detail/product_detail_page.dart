import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/product/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final product = Product.dummy.first;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: Image.network(product.imageUrl).image,
                    ),
                  ),
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person_outline),
                          const Gap(4),
                          Text(
                            product.profile.fullName,
                          ),
                          const Gap(4),
                          Text(
                            '${product.profile.point} Puan',
                          ),
                        ],
                      ),
                      const Divider(),
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Gap(8),
                      Text(
                        product.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Gap(8),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const Gap(4),
                          Text(
                            product.profile.address?.description ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const Divider(),
                      Text(
                        'Sohbet',
                        style: textTheme.titleMedium,
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 5,
                    itemBuilder: (context, index) => const Text('Mesaj'),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Talep Et'),
          )
        ],
      ),
    );
  }
}
