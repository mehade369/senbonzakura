import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:senbonzakura/app/app.dart';

const separator = SizedBox(height: 20);

void bootstrap() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
