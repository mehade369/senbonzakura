import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:log_pose/log_pose.dart';

class AppBlocObserver extends BlocObserver with BlocLoggy {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    loggy.info(
      // ignore: avoid_dynamic_calls
      'onChange -->> ${bloc.runtimeType} ${change.currentState.runtimeType} ${change.nextState.runtimeType}',
    );
    // loggy.info(
    //   'onChange -->> ${bloc.runtimeType} $change',
    // );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    loggy.error('onClose -->> ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    loggy.debug('onCreate -->> ${bloc.runtimeType}');
  }

  @override
  void onError(
    BlocBase bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    super.onError(bloc, error, stackTrace);
    loggy.error('onError -->> ${bloc.runtimeType} - $error, $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    loggy.info('onEvent -->> ${bloc.runtimeType} - $event');
  }

//   @override
//   void onTransition(
//      Bloc bloc,
//      Transition transition,
//   ) {
//     super.onTransition(bloc, transition);
//     loggy.info('onTransition --> ${bloc.runtimeType}, $transition');
//   }
}
