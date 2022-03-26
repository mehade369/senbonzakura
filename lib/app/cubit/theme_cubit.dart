import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> with HydratedMixin {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.system));

  void toggleThemeMode({required ThemeMode themeMode}) {
    emit(ThemeState(themeMode: themeMode));
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return ThemeState(
      themeMode: ThemeMode.values[json['index'] as int],
    );
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return <String, int>{
      'index': state.themeMode.index,
    };
  }
}
