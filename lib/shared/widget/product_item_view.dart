import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/product/product.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.network(
                    product.imageUrl,
                  ).image,
                ),
              ),
            ),
          ),
          Text(
            product.title,
            overflow: TextOverflow.ellipsis,
          ),
          const Gap(6),
          Text(
            product.profile.address?.description ?? '',
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
