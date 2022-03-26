import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/search/search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const TopSearchBar.editable(
              onChanged: print,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ).unFocus();
  }
}
