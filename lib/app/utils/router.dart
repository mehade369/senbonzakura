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
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

abstract class App {
  static const root = '/';
  static const signIn = 'sign_in';
  static const signUp = 'sign_up';
  static const forgetPassword = 'forget_password';
  static const signUpForm = 'sign_up_form';
  static const search = 'search';
  static const productDetail = 'product_detail';
}

// ignore: avoid_classes_with_only_static_members
abstract class RouterX {
  static final router = GoRouter(
    // initialLocation: '${App.root}${App.signIn}',
    debugLogDiagnostics: false,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: App.root,
        name: App.root,
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
              create: (_) => CartBloc()..add(const CartEvent.loadCart()),
            ),
            BlocProvider(
              create: (_) => NotificationsBloc(),
            ),
            BlocProvider(
              create: (_) => AccountBloc(),
            ),
          ],
          child: const RootNavigationStack(),
        ),
        routes: [
          GoRoute(
            name: App.productDetail,
            path: '${App.productDetail}/:productId',
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
            path: App.search,
            name: App.search,
            builder: (_, state) => const SearchPage(),
          ),
          GoRoute(
            path: App.signIn,
            name: App.signIn,
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
            //     path: App.forgetPassword,
            //     name: App.forgetPassword,
            //     builder: (context, state) => BlocProvider.value(
            //       value: context.read<SignInCubit>(),
            //       child: ForgetPasswordPage(),
            //     ),
            //   ),
            // ],
          ),
          GoRoute(
            path: App.signUp,
            name: App.signUp,
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
            //     path: App.signUpForm,
            //     name: App.signUpForm,
            //     builder: (_, state) => const SignUpForm(),
            //   ),
            // ],
          ),
        ],
      ),
    ],
  );
}
