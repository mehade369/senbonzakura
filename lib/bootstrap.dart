import 'dart:async';
import 'dart:developer';

import 'package:appwrite/src/client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senbonzakura/app/app.dart';

const separator = SizedBox(height: 20);

void bootstrap({required Client client}) {
  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
      name: details.library ?? 'Flutter Error',
    );
  };

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
              client: client,
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
