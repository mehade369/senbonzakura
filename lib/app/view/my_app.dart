import 'package:app_theme/app_theme.dart';
import 'package:device_preview/device_preview.dart' show DevicePreview;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senbonzakura/app/app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const _AppBody(),
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
      debugShowCheckedModeBanner: false,

      // device_preview
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

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
