import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class Forgot_passwordRepositoryImp implements Forgot_passwordRepository {
  final Forgot_passwordRemoteDataSource remoteDataSource;
  Forgot_passwordRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
