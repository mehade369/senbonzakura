import 'dart:async';
import 'dart:developer';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/repositories/repositories.dart';

const separator = SizedBox(height: 20);

// Depends on the API
void bootstrap({
  required ProductApi productApi,
  required AuthApi authApi,
  required StorageApi storageApi,
}) {
  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
      name: details.library ?? 'Flutter Error',
    );
  };

  /// We instantiate the repositories here
  /// We can to some initialization/ setup here with the repositories
  final authRepository = AuthRepository(authApi: authApi);
  final storageRepository = StorageRepository(storageApi);
  final productRepository = ProductRepository(productApi: productApi);
  final cartRepository = CartRepository();

  runZonedGuarded(
    () async {
      final storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
      );

      await HydratedBlocOverrides.runZoned(
        () async => runApp(
          ProviderScope(
            child: MyApp(
              authRepository: authRepository,
              storageRepository: storageRepository,
              productRepository: productRepository,
              cartRepository: cartRepository,
            ),
          ),
        ),
        blocObserver: AppBlocObserver(),
        storage: storage,
      );
    },
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
      name: 'bootstrap',
    ),
  );
}
