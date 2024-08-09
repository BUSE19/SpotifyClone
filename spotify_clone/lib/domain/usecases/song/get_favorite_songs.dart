import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/usecase.dart';
import 'package:spotify_clone/domain/repository/auth/song/song.dart';

import '../../../service_locator.dart';

class GetFavoriteSongsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getUserFavoriteSongs();
  }
}
