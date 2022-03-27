import 'dart:developer';

import 'package:appwrite/appwrite.dart';

class StorageRepository {
  StorageRepository(this.storageApi);

  final StorageApi storageApi;

  Future<void> createFile({required String path, required String fileName}) =>
      storageApi.createFile(
        path: path,
        fileName: fileName,
      );
}

abstract class StorageApi {
  Future<void> createFile({
    required String path,
    required String fileName,
  });
}

class AppwriteStorageApi implements StorageApi {
  AppwriteStorageApi(this._storage);

  final Storage _storage;

  @override
  Future<void> createFile({
    required String path,
    required String fileName,
  }) async {
    try {
      final result = await _storage.createFile(
        bucketId: '6235e5e492e07c03c1b4',
        fileId: 'unique()',
        file: InputFile(
          path: path,
          filename: fileName,
        ),
      );

      log('result: ${result.toMap()}');
    } on AppwriteException catch (e) {
      rethrow;
    }
  }
}
