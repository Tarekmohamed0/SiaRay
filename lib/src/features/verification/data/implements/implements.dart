import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class VerificationRepositoryImp implements VerificationRepository {
  final VerificationRemoteDataSource remoteDataSource;
  VerificationRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
