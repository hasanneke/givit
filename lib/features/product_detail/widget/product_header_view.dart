part of '../product_detail_page.dart';

class _ProductHeaderView extends StatelessWidget {
  const _ProductHeaderView({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.network(product.imageUrl).image,
        ),
      ),
      height: 200,
    );
  }
}
