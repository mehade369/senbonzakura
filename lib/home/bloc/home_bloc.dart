import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';


part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Loading()) {
    on<_Started>((event, emit) async {
      await Future.delayed(
        const Duration(seconds: 2),
        () {
          productRepository.getBestSellingProducts().fold(
                (l) => emit(_Error(l)),
                (r) => emit(_Success(products: r)),
              );
        },
      );
    });
  }

  final ProductRepository productRepository = ProductRepository();
}
