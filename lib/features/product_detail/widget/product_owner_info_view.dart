part of '../product_detail_page.dart';

class _ProductOwnerInfoView extends StatelessWidget {
  const _ProductOwnerInfoView({
    super.key,
    required this.product,
    required this.textTheme,
  });

  final Product product;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.person_outline),
              const Gap(4),
              Text(
                product.profile.fullName,
              ),
              const Gap(4),
              Text(
                '${product.profile.point} Puan',
              ),
            ],
          ),
          const Divider(),
          Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Gap(8),
          Text(
            product.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(8),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              const Gap(4),
              Text(
                product.profile.address?.description ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
