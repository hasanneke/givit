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
            body: SafeArea(
              child: Column(
                children: [
                  _ProfileAppBar(
                    profile: profile,
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 4,
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
                                text: 'Taleplerim',
                              ),
                              Tab(
                                text: 'Kaydedilenler',
                              ),
                              Tab(
                                text: 'Gelen Talepler',
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
                                products: savedProducts
                                    .map((e) => e.product)
                                    .toList(),
                              ),
                              BuyRequestsListView(
                                buyRequests: buyRequests.take(3).toList(),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.network(
                  profile?.avatarUrl ?? '',
                  errorBuilder: (context, error, stackTrace) =>
                      const Placeholder(),
                ),
              ),
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
          SizedBox(
            width: 130,
            child: FormBuilderSwitch(
              decoration: InputDecoration(
                  border: InputBorder.none, enabledBorder: InputBorder.none),
              name: 'is_anon',
              title: const Text(
                'Hesabı Gizle',
              ),
            ),
          ),
        ],
      ),
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
        leading: CircleAvatar(
            backgroundImage:
                Image.network(buyRequests[index].product.imageUrl ?? '').image),
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
