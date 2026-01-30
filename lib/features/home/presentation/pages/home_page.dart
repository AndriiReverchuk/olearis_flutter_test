import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(child: HomeBody()),
    );
  }
}
