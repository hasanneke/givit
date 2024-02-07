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
  bool isAttop = true;
  ScrollController liveScrollController = ScrollController();
  ScrollController orderScrollController = ScrollController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    liveScrollController.addListener(() {
      if (isAttop == false && liveScrollController.position.pixels <= 60) {
        isAttop = true;
        setState(() {});
      } else if (isAttop == true &&
          liveScrollController.position.pixels >= 70) {
        isAttop = false;
        setState(() {});
      }
    });
    orderScrollController.addListener(() {
      if (isAttop == false && orderScrollController.position.pixels <= 60) {
        isAttop = true;
        setState(() {});
      } else if (isAttop == true &&
          orderScrollController.position.pixels >= 70) {
        isAttop = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const AccounSettingsDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).viewPadding.top + 20,
          ),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(
              Icons.manage_accounts,
              size: 30,
            ),
          ),
          //! Top Part
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.ease,
            height: isAttop ? 320 : 126,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                //! Avatearasfdsachadisuc
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.ease,
                  right: isAttop
                      ? (MediaQuery.of(context).size.width / 2) - 50
                      : MediaQuery.of(context).size.width - 120,
                  child: const CircleAvatar(
                    radius: 50,
                  ),
                ),
                //! User name Nand DOntadwas
                //! Avatearasfdsachadisuc
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.ease,
                  right: isAttop
                      ? (MediaQuery.of(context).size.width / 2) - 80
                      : MediaQuery.of(context).size.width - 290,
                  top: isAttop ? 120 : 25,
                  child: SizedBox(
                    width: 160,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: isAttop
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'User Name',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Donation Rank: ####',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  bottom: isAttop ? 0 : -100,
                  right: 0,
                  left: 0,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.ease,
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
              ],
            ),
          ),
          //! Bottom Part
          Builder(
            builder: (context) {
              if (!listListings) {
                return OrderView(
                  onMyDontaitionsTap: () => setState(() {
                    listOrders = false;
                  }),
                  onMyOrdersTap: () => setState(() {
                    listOrders = true;
                  }),
                  listOrders: listOrders,
                  scrollController: orderScrollController,
                );
              }
              {
                return ListingView(
                  scrollController: liveScrollController,
                  onListChange: (value) {
                    setState(
                      () {
                        listListings = value;
                      },
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
