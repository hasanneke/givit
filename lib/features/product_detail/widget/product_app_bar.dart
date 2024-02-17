part of '../product_detail_page.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(product.title),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_outline),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
