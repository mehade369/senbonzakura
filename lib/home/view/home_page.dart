import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/search/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: TopSearchBar.readOnly(
        onTap: () => context.goNamed(App.search),
      ),
        ),
      );
}
