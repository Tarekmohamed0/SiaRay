import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class ResetpasswordRepositoryImp implements ResetpasswordRepository {
  final ResetpasswordRemoteDataSource remoteDataSource;
  ResetpasswordRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
