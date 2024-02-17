import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/features/home/bloc/home_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givit/features/home/service/home_service.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/widget/product_item_view.dart';
part './widget/home_app_bar.dart';
part './widget/home_categories_view.dart';
part './widget/home_products_list_view.dart';
part 'home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        homeService: FBHomeService(),
      )..add(
          const HomeEvent.started(),
        ),
      child: const _HomeView(),
    );
  }
}
