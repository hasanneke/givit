part of 'profile_page.dart';

class _ProfileView extends StatelessWidget {
  const _ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loaded: (profile, products, savedProducts, buyRequests) => Scaffold(
            appBar: _ProfileAppBar(
              profile: profile,
            ),
            body: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileInfo(profile: profile),
                  const TabBar(
                    tabs: [
                      Tab(
                        text: 'İlanlarım',
                      ),
                      Tab(
                        text: 'İsteklerim',
                      ),
                      Tab(
                        text: 'Kaydedilenler',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      GridListView(
                        products: products,
                      ),
                      BuyRequestsListView(
                        buyRequests: buyRequests,
                      ),
                      GridListView(
                        products: savedProducts.map((e) => e.product).toList(),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProfileAppBar({
    super.key,
    required this.profile,
  });
  final Profile? profile;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Image.network(
            profile?.avatarUrl ?? '',
            errorBuilder: (context, error, stackTrace) => const Placeholder(),
          ),
        ),
      ),
      title: Row(
        children: [
          const Gap(8),
          Text(
            '${profile?.point ?? 0} puan',
          ),
          const Icon(
            Icons.star,
            color: Colors.orange,
          ),
        ],
      ),
      actions: [
        IconButton.filledTonal(
          onPressed: () {},
          icon: const Icon(
            Icons.edit_outlined,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class GridListView extends StatelessWidget {
  const GridListView({
    super.key,
    required this.products,
  });
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.8),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductItemView(
        product: products[index],
      ),
    );
  }
}

class BuyRequestsListView extends StatelessWidget {
  const BuyRequestsListView({
    super.key,
    required this.buyRequests,
  });
  final List<BuyRequest> buyRequests;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: buyRequests.length,
      itemBuilder: (context, index) => ListTile(
        leading: const CircleAvatar(),
        title: Text(buyRequests[index].title, overflow: TextOverflow.ellipsis),
        subtitle:
            Text(buyRequests[index].message, overflow: TextOverflow.ellipsis),
        trailing: BuyRequestStatus(
          status: buyRequests[index].status,
        ),
      ),
    );
  }
}

class BuyRequestStatus extends StatelessWidget {
  const BuyRequestStatus({
    super.key,
    required this.status,
  });
  final RequestStatus status;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case RequestStatus.accepted:
        return const Icon(
          Icons.check,
          color: Colors.green,
        );
      case RequestStatus.rejected:
        return const Icon(
          Icons.close,
          color: Colors.red,
        );
      case RequestStatus.waiting:
        return Icon(
          Icons.watch_later_outlined,
          color: Colors.yellow[600],
        );
    }
  }
}
