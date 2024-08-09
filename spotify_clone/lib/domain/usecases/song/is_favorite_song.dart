import 'package:spotify_clone/core/usecase/usecase.dart';
import 'package:spotify_clone/domain/repository/auth/song/song.dart';

import '../../../service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }
}
