part of '../home_page.dart';

class _ProductsListView extends StatelessWidget {
  const _ProductsListView();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200] ?? Colors.grey,
          ),
        ),
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
