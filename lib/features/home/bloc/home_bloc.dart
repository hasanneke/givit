import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/features/home/service/home_service.dart';
import 'package:givit/shared/model/mock/mock_data.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/product_category/product_category.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService homeService;
  final List<Product> _products = [];
  final List<ProductCategory> _categories = [];
  HomeBloc({required this.homeService}) : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () => _onStarted(emit),
      );
    });
  }
  Future<void> _onStarted(Emitter emit) async {
    emit(
      HomeState.loaded(
        products: MockData.products,
        categories: MockData.categories,
      ),
    );
  }
}
