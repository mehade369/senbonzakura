import 'package:app_theme/app_theme.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:device_preview/device_preview.dart' show DevicePreview;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/l10n/l10n.dart';
import 'package:senbonzakura/repositories/repositories.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.authRepository,
    required this.storageRepository,
    required this.productRepository,
  }) : super(key: key);

  final AuthRepository authRepository;
  final StorageRepository storageRepository;
  final ProductRepository productRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: authRepository,
        ),
        RepositoryProvider.value(
          value: storageRepository,
        ),
        RepositoryProvider.value(
          value: productRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
        ],
        child: const _AppBody(),
      ),
    );
  }
}

class _AppBody extends StatelessWidget {
  const _AppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>().state;

    return MaterialApp.router(
      //debug
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      debugShowMaterialGrid: false,
      showPerformanceOverlay: false,

      // device_preview
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      //localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // declarative navigation
      routeInformationParser: RouterX.router.routeInformationParser,
      routerDelegate: RouterX.router.routerDelegate,

      // theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeCubit.themeMode,
    );
  }
}
