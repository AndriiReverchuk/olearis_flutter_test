import '../../domain/repositories/tiles_repository.dart';

class RemoveTileUseCase {
  final TilesRepository _repository;

  RemoveTileUseCase(this._repository);

  Future<void> execute() async {
    await _repository.removeLastTile();
  }
}
