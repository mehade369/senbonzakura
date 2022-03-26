import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/forget_password/forget_password.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/notifications/notifications.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

abstract class App {
  static const String root = '/';
  static const String signIn = 'sign_in';
  static const String signUp = 'sign_up';
  static const String forgetPassword = 'forget_password';
  static const String signUpForm = 'sign_up_form';
}

// ignore: avoid_classes_with_only_static_members
abstract class RouterX {
  static final router = GoRouter(
    initialLocation: App.root,
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
              create: (_) => CartBloc(),
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
            path: App.signIn,
            name: App.signIn,
            builder: (_, state) => BlocProvider(
              create: (_) => SignInCubit(),
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
            builder: (_, state) => BlocProvider(
              create: (context) => SignUpCubit(),
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
