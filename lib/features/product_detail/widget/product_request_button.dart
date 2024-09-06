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
        // context.push('/product-detail/request', extra: product);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            showCloseIcon: true,
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 1),
            backgroundColor: Colors.green,
            content: Text(
              'Ürün Talep Edildi',
            ),
          ),
        );
      },
      child: const Text('Talep Et'),
    );
  }
}
