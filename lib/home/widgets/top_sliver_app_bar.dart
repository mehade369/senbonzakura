import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/app/utils/utils.dart';
import 'package:senbonzakura/search/search.dart';

class TopSliverAppBar extends StatelessWidget {
  const TopSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: false,
      title: TopSearchBar.readOnly(
        onTap: () => context.goNamed(App.search),
      ),
      actions: [
        IconButton(
          onPressed: Scaffold.of(context).openEndDrawer,
          icon: const Icon(Icons.segment_outlined),
        ),
      ],
    );
  }
}
