import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class MainscreenRepositoryImp implements MainscreenRepository {
  final MainscreenRemoteDataSource remoteDataSource;
  MainscreenRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
