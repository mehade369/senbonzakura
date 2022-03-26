import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/forget_password/forget_password.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/notifications/notifications.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';
import 'package:senbonzakura/search/search.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

abstract class App {
  static const String root = '/';
  static const String signIn = 'sign_in';
  static const String signUp = 'sign_up';
  static const String forgetPassword = 'forget_password';
  static const String signUpForm = 'sign_up_form';
  static String search = 'search';
}

// ignore: avoid_classes_with_only_static_members
abstract class RouterX {
  static final router = GoRouter(
    initialLocation: App.root,
    debugLogDiagnostics: false,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: App.root,
        name: App.root,
        builder: (_, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => RootNavigationStackCubit(),
            ),
            BlocProvider(
              create: (_) => HomeBloc(),
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
                  create: (_) => SignInCubit(),
                ),
              ],
              child: const SignInPage(),
            ),
            routes: [
              GoRoute(
                path: App.forgetPassword,
                name: App.forgetPassword,
                builder: (_, state) => const ForgetPasswordPage(),
              ),
            ],
          ),
          GoRoute(
            path: App.signUp,
            name: App.signUp,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => SignUpCubit(),
                ),
              ],
              child: const SignUpPage(),
            ),
            routes: [
              GoRoute(
                path: App.signUpForm,
                name: App.signUpForm,
                builder: (_, state) => const SignUpForm(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
