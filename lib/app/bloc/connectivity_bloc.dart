import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_bloc.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc()
      : super(const ConnectivityState(status: ConnectivityResult.none)) {
    on<_Started>((event, emit) async {
      await emit.forEach<ConnectivityResult>(
        Connectivity().onConnectivityChanged,
        onData: (result) => ConnectivityState(status: result),
      );
    });
  }
}
