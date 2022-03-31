// ignore_for_file: cast_nullable_to_non_nullable

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/notifications/notifications.dart';
import 'package:senbonzakura/product_details/product_details.dart';
import 'package:senbonzakura/repositories/repositories.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';
import 'package:senbonzakura/search/search.dart';
import 'package:senbonzakura/setting/setting.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

abstract class RouteName {
  static const root = '/';
  static const signIn = 'sign_in';
  static const signUp = 'sign_up';
  static const forgetPassword = 'forget_password';
  static const signUpForm = 'sign_up_form';
  static const search = 'search';
  static const productDetail = 'product_detail';
  static const setting = 'setting';
}

// ignore: avoid_classes_with_only_static_members
abstract class AppRouter {
  static final router = GoRouter(
    // initialLocation: '${RouteName.root}${RouteName.signIn}',
    debugLogDiagnostics: false,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: RouteName.root,
        name: RouteName.root,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => RootNavigationStackCubit(),
            ),
            BlocProvider(
              create: (context) => HomeBloc(
                productRepository: context.read<ProductRepository>(),
              )..add(const HomeEvent.started()),
            ),
            BlocProvider(
              create: (_) => CartBloc(
                authRepository: context.read<AuthRepository>(),
                cartRepository: context.read<CartRepository>(),
              )..add(const CartEvent.loadCart()),
            ),
            BlocProvider(
              create: (_) => NotificationsBloc(),
            ),
            BlocProvider(
              create: (_) => AccountBloc(
                storageRepository: context.read<StorageRepository>(),
              ),
            ),
          ],
          child: const RootNavigationStack(),
        ),
        routes: [
          GoRoute(
            path: RouteName.setting,
            name: RouteName.setting,
            builder: (context, state) => const SettingPage(),
          ),
          GoRoute(
            name: RouteName.productDetail,
            path: '${RouteName.productDetail}/:productId',
            builder: (context, state) {
              final params = state.params['productId'];

              /// In order to show smooth animation, we need to use Hero widget.
              /// and, for Hero Widget need to image/image in the initial state.
              /// So, we need image from the page where is pushed.
              ///
              /// But, in Web we can't get the images if user input the url.
              final images = state.extra as Iterable<String>;

              if (params == null) {
                return const Scaffold(
                  body: Center(
                    child: Text('No product id'),
                  ),
                );
              }

              final productId = int.tryParse(params);

              if (productId == null) {
                return const Scaffold(
                  body: Center(
                    child: Text('Invalid product id'),
                  ),
                );
              }

              return BlocProvider(
                create: (context) => ProductDetailsCubit(
                  productRepository: context.read<ProductRepository>(),
                  images: images,
                  productId: productId,
                )..fetchProductDetails(productId),
                child: const ProductDetailsPage(),
              );
            },
          ),
          GoRoute(
            path: RouteName.search,
            name: RouteName.search,
            builder: (_, state) => const SearchPage(),
          ),
          GoRoute(
            path: RouteName.signIn,
            name: RouteName.signIn,
            builder: (_, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SignInCubit(
                    authRepository: context.read<AuthRepository>(),
                  ),
                ),
              ],
              child: const SignInPage(),
            ),
            // routes: [
            //   GoRoute(
            //     path: RouteName.forgetPassword,
            //     name: RouteName.forgetPassword,
            //     builder: (context, state) => BlocProvider.value(
            //       value: context.read<SignInCubit>(),
            //       child: ForgetPasswordPage(),
            //     ),
            //   ),
            // ],
          ),
          GoRoute(
            path: RouteName.signUp,
            name: RouteName.signUp,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => SignUpCubit(
                    authRepository: context.read<AuthRepository>(),
                  ),
                ),
              ],
              child: const SignUpPage(),
            ),
            // routes: [
            //   GoRoute(
            //     path: RouteName.signUpForm,
            //     name: RouteName.signUpForm,
            //     builder: (_, state) => const SignUpForm(),
            //   ),
            // ],
          ),
        ],
      ),
    ],
  );
}
