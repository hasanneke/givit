import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/widget/product_item_view.dart';
part 'widget/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = Profile.dummy;
    return SafeArea(
      child: DefaultTabController(
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
                GridListView(products: Product.dummy),
                BuyRequestsListView(buyRequests: BuyRequest.dummyList),
                GridListView(products: Product.dummy),
              ]),
            ),
          ],
        ),
      ),
    );
  }
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
        title: Text(buyRequests[index].title),
        subtitle: Text(
          buyRequests[index].message,
        ),
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
