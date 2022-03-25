import 'package:bloc/bloc.dart';

class RootNavigationStackCubit extends Cubit<RootNavigationStackState> {
  RootNavigationStackCubit() : super(RootNavigationStackState.home);

  void goToHome() => emit(RootNavigationStackState.home);

  void goToCart() => emit(RootNavigationStackState.cart);

  void goToNotifications() => emit(RootNavigationStackState.notifications);

  void goToProfile() => emit(RootNavigationStackState.account);

  void onDestinationChanged(int index) {
    emit(state.onDestinationChanged(index));
  }
}

enum RootNavigationStackState {
  home,
  cart,
  notifications,
  account,
}

extension _RootNavigationEx on RootNavigationStackState {
  RootNavigationStackState onDestinationChanged(int index) {
    switch (index) {
      case 0:
        return RootNavigationStackState.home;
      case 1:
        return RootNavigationStackState.cart;
      case 2:
        return RootNavigationStackState.notifications;
      case 3:
        return RootNavigationStackState.account;
      default:
        return RootNavigationStackState.home;
    }
  }
}
