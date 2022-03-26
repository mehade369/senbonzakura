import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:log_pose/log_pose.dart';
import 'package:senbonzakura/home/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with UiLoggy {
  @override
  Widget build(BuildContext context) {
    loggy.debug('HomePage build');

    return Scaffold(
      endDrawer: const Drawer(),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<HomeBloc>().add(const HomeEvent.started());
        },
        child: CustomScrollView(
          slivers: [
            const TopSliverAppBar(),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) => state.map(
                error: (error) => SliverError(message: error.message),
                loading: (_) => const SliverLoading(),
                success: (data) => ProductGridView(products: data.products),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
