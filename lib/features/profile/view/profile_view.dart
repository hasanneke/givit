// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:givit/features/profile/view/widgets/order_card.dart';
import 'package:givit/features/profile/view/widgets/profile_stat_card.dart';
import 'package:givit/features/profile/view/widgets/listing_view.dart';
import 'package:givit/features/profile/view/widgets/order_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool listOrders = true;
  bool listListings = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BottomNavBar eklenemdi tasarımı belli değil.
      appBar: AppBar(
        actions: [
          Icon(
            size: 30,
            Icons.manage_accounts,
            color: Colors.black,
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'User Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Donation Rank: ####'),
            ),
            Container(
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
                    child: ProfileStatCard(
                      title: 'Live Listings',
                      number: '20',
                      implication: 'Details →',
                    ),
                  ),
                  ProfileStatCard(
                    title: 'Comments',
                    number: '35',
                    implication: '',
                  ),
                  ProfileStatCard(
                    title: 'Likes',
                    number: '500',
                    implication: '',
                  ),
                ],
              ),
            ),
            if (!listListings) OrderView(),
            if (listListings)
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
