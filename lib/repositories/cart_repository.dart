import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

class CartRepository {
  Future<Cart> getProducts() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return Cart(
      id: 1,
      name: 'Samsung Galaxy',
      items: [
        CartItem(
          id: 1,
          name: 'Samsung Galaxy S10',
          price: 1000,
          quantity: 1,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 2,
          thumbnailImage: images.elementAt(0),
        ),
        CartItem(
          id: 2,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(1),
        ),
        CartItem(
          id: 3,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(2),
        ),
        CartItem(
          id: 4,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(3),
        ),
        CartItem(
          id: 5,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(4),
        ),
        CartItem(
          id: 6,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(5),
        ),
        CartItem(
          id: 7,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(6),
        ),
        CartItem(
          id: 8,
          name: 'Samsung Note9',
          price: 100,
          quantity: 4,
          shippingCost: 100,
          tax: 10,
          currentStockCount: 5,
          thumbnailImage: images.elementAt(7),
        ),
      ],
    );
  }
}
