import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes.dart';
import '../../application/home_controller.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(homeControllerProvider);
    final canRemove = asyncState.valueOrNull?.canRemove ?? false;
    final controller = ref.read(homeControllerProvider.notifier);

    return AppBar(
      title: const Text('Markup Test'),
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => context.goNamed(Routes.signInName),
        tooltip: 'Logout',
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: canRemove ? controller.removeTile : null,
          tooltip: 'Remove last tile',
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: controller.addTile,
          tooltip: 'Add tile',
        ),
      ],
    );
  }
}
