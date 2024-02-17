part of '../profile_page.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.profile,
  });

  final Profile? profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.person_outline_outlined),
                  Text('${profile?.name} ${profile?.surname}'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  Text(profile?.address?.description ?? ''),
                ],
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.phone_outlined,
              ),
              Text(profile?.phone ?? '??')
            ],
          ),
        ],
      ),
    );
  }
}
