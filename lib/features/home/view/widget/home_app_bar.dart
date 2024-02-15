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
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_sharp),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
