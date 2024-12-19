import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class VerifyRepositoryImp implements VerifyRepository {
  final VerifyRemoteDataSource remoteDataSource;
  VerifyRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
