import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class PanelinfoRepositoryImp implements PanelinfoRepository {
  final PanelinfoRemoteDataSource remoteDataSource;
  PanelinfoRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
