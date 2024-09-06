part of 'home_page.dart';

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductsState>(
        builder: (context, state) {
          final product = state;
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SupportUsPage(),
                      ));
                    },
                    icon: Icon(Icons.support_sharp),
                    label: Text('Bağış Yap')),
                AppBar(
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
                ),
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
