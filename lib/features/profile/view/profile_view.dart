import 'package:flutter/material.dart';
import 'package:givit/features/profile/view/widgets/account_settings_drawer.dart';
import 'package:givit/features/profile/view/widgets/profile_stat_card.dart';
import 'package:givit/features/profile/view/widgets/listing_view.dart';
import 'package:givit/features/profile/view/widgets/order_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool listOrders = true;
  bool listListings = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(
              Icons.manage_accounts,
              size: 30,
            ),
          ),
        ],
      ),
      endDrawer: AccounSettingsDrawer(),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'User Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Donation Rank: ####'),
            ),
            SizedBox(
              height: 115,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        listListings = true;
                      });
                    },
                    child: const ProfileStatCard(
                      title: 'Live Listings',
                      number: '20',
                      implication: 'Details →',
                    ),
                  ),
                  const ProfileStatCard(
                    title: 'Comments',
                    number: '35',
                    implication: '',
                  ),
                  const ProfileStatCard(
                    title: 'Likes',
                    number: '500',
                    implication: '',
                  ),
                ],
              ),
            ),
            if (!listListings)
              OrderView()
            else
              ListingView(
                onListChange: (value) {
                  setState(() {
                    listListings = value;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}
