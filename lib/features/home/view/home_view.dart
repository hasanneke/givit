part of 'home_page.dart';

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: BlocBuilder<ProductBloc, ProductsState>(
        builder: (context, state) {
          final product = state;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => FilterChip.elevated(
                      label: Text(MockData.categories[index].name),
                      onSelected: (value) {},
                    ),
                    separatorBuilder: (context, index) => const Gap(8),
                    itemCount: MockData.categories.length,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) => ProductItemView(
                      product: state.products[index],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
