import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:givit/features/profile/bloc/profile_bloc.dart';
import 'package:givit/features/profile/service/profile_service.dart';

import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/widget/product_item_view.dart';
part 'widget/profile_info.dart';
part 'profile_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        FBProfilePageService(),
        FirebaseAuth.instance.currentUser!.uid,
      )..add(
          ProfileEvent.started(
            userId: FirebaseAuth.instance.currentUser?.uid ?? '',
          ),
        ),
      child: const _ProfileView(),
    );
  }
}
