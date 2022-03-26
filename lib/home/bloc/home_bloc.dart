import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required ProductRepository productRepository,
  })  : _productRepository = productRepository,
        super(const _Loading()) {
    on<_Started>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 2));

      final data = await productRepository.getBestSellingProducts();

      log('data: $data');

      emit(_Success(products: data));
    });
  }

  final ProductRepository _productRepository;
}
