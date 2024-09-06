import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/features/home/service/home_service.dart';
import 'package:givit/shared/model/mock/mock_data.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/products/bloc/product_state.dart';

part 'product_event.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductsState> {
  final HomeService homeService;
  ProductBloc(this.homeService)
      : super(ProductsState(products: MockData.products)) {
    on<ProductEvent>((event, emit) {
      event.when(
        started: () {},
        create: (product) {
          emit(state.copyWith(products: [product, ...state.products]));
        },
      );
    });
  }
}
