part of '../home_page.dart';

class _CategoriesListView extends StatelessWidget {
  const _CategoriesListView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const Gap(8),
        itemCount: 5,
        itemBuilder: (context, index) => FilterChip(
          label: const Text('Ayakabı'),
          onSelected: (value) {},
        ),
      ),
    );
  }
}
