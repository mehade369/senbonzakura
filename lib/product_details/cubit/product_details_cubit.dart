import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit({
    required Iterable<String> images,
    required int productId,
  }) : super(
          _Loading(
            images: images,
            productId: productId,
          ),
        );

  void fetchProductDetails(int productId) {
    final data = _productRepository.getProductDetails(productId);

    Future.delayed(const Duration(seconds: 2), () async {
      emit(data.fold(_Error.new, _Loaded.new));
    });
  }

  final ProductRepository _productRepository = ProductRepository();
}
