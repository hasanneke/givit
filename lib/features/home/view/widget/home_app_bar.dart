part of '../home_page.dart';

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const TextField(
        decoration: InputDecoration(
          hintText: 'Ürün ara',
          suffixIcon: Icon(
            Icons.search_outlined,
          ),
        ),
      ),
      actions: [
        IconButton.filledTonal(
          onPressed: () {},
          icon: const Icon(Icons.category_outlined),
        ),
        IconButton.filledTonal(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
