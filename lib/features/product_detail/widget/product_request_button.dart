part of '../product_detail_page.dart';

class _RequestItemButton extends StatelessWidget {
  const _RequestItemButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.push('/product-detail/request', extra: product);
      },
      child: const Text('Talep Et'),
    );
  }
}
