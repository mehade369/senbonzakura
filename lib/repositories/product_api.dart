import 'package:appwrite/appwrite.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

abstract class ProductApi {
  Future<Iterable<ProductPreview>> getProducts();
}

class LocalProductApi implements ProductApi {
  @override
  Future<Iterable<ProductPreview>> getProducts() async {
    final products = [
      ProductPreview(
        id: '1',
        name: 'Samsung A50',
        thumbnailImage: images.elementAt(0),
        currentStockCount: 5,
        price: 599,
      ),
      ProductPreview(
        id: '2',
        name: 'Samsung 8 Pro A8 2020',
        thumbnailImage: images.elementAt(1),
        currentStockCount: 1,
        price: 699.8,
        discountedPrice: 599.8,
      ),
      ProductPreview(
        id: '3',
        name: 'Samsung A50 Galaxy A50 64GB',
        thumbnailImage: images.elementAt(2),
        currentStockCount: 5,
        price: 599,
      ),
      ProductPreview(
        id: '5',
        name: 'Samsung A50 a50 64GB Galaxy A50 64GB Galaxy A50 64GB',
        thumbnailImage: images.elementAt(4),
        currentStockCount: 5,
        price: 599,
      ),
    ];

    await Future<void>.delayed(Duration(seconds: 1));

    return products;
  }
}

class AppwriteProductApi implements ProductApi {
  AppwriteProductApi({
    required this.database,
  });

  final Database database;

  @override
  Future<Iterable<ProductPreview>> getProducts() async {
    try {
      final docs = await database.listDocuments(collectionId: 'products');

      final data = docs.documents.map((doc) {
        final product = ProductPreview.fromJson(doc.data);

        return product;
      });

      return data;
    } on AppwriteException catch (e) {
      rethrow;
    }
  }
}
