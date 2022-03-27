import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit({
    required ProductRepository productRepository,
    required Iterable<String> images,
    required int productId,
  })  : _productRepository = productRepository,
        super(
          _Loading(
            images: images,
            productId: productId,
          ),
        );

  Future<void> fetchProductDetails(int productId) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    final data = await _productRepository.getProductDetails(productId);

    emit(_Loaded(data));
  }

  final ProductRepository _productRepository;
}
