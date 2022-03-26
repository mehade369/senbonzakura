

import 'package:fpdart/fpdart.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

class ProductRepository {
  Either<String, Iterable<ProductPreview>> getBestSellingProducts() => Right(
      [
        ProductPreview(
          id: 1,
          name: 'Samsung A50',
          thumbnailImage: images.elementAt(0),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 2,
          name: 'Samsung 8 Pro A8 2020',
          thumbnailImage: images.elementAt(1),
          currentStockCount: 1,
          price: 699.8,
          discountedPrice: 599.8,
        ),
        ProductPreview(
          id: 3,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(2),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 5,
          name: 'Samsung A50 a50 64GB Galaxy A50 64GB Galaxy A50 64GB',
          thumbnailImage: images.elementAt(4),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 6,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(5),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 7,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(6),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 8,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(7),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 9,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(8),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 10,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(9),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 11,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(10),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 12,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(11),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 13,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(12),
          currentStockCount: 5,
          price: 599,
        ),
        ProductPreview(
          id: 14,
          name: 'Samsung A50 Galaxy A50 64GB',
          thumbnailImage: images.elementAt(13),
          currentStockCount: 5,
          price: 599,
        ),
      ],
    );

  Either<String, ProductDetails> getProductDetails(int productId) {
    return getBestSellingProducts().fold(
      left,
      (r) => right(
        ProductDetails(
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
        ),
      ),
    );
  }
}
