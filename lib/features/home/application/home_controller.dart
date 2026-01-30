import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_state.dart';
import 'providers.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  Stream<HomeState> build() {
    final watchUseCase = ref.watch(watchTilesUseCaseProvider);
    return watchUseCase.execute().map(
          (tiles) => HomeState(tiles: tiles),
        );
  }

  Future<void> addTile() async {
    final useCase = ref.read(addTileUseCaseProvider);
    await useCase.execute();
  }

  Future<void> removeTile() async {
    final useCase = ref.read(removeTileUseCaseProvider);
    await useCase.execute();
  }
}
