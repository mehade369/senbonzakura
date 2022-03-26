import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

class ProductRepository {
  ProductRepository({
    required this.productApi,
  });

  final ProductApi productApi;

  Future<Iterable<ProductPreview>> getBestSellingProducts() async {
    return productApi.getProducts();
  }

  Future<ProductDetails> getProductDetails(int productId) async {
    return ProductDetails(
      id: productId,
      name: 'Apple $productId iPhoneXZ 64GB Space Gray',
      rating: 4.5,
      totalReviews: 10,
      description:
          'The color of its skin reminded him of Zone’s whores; it was a handgun and nine rounds of ammunition, and as he made his way down Shiga from from the wall of a junked console',
      images: images,
      price: 599,
      discountedPrice: 449,
      tax: 98.3,
      shippingCost: 10,
    );
  }
}
