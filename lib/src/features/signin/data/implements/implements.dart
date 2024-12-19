import '../../../signup/data/models/user_model.dart';
import '../sources/signin_remoteData.dart';
import '../../domain/repositories/signin_repo.dart';

class SigninRepositoryImp implements SigninRepo {
  final SigninRemoteDataSource remoteDataSource;
  SigninRepositoryImp({required this.remoteDataSource});

  @override
  Future<UserModel> signIn(String email, String password) async {
    return await remoteDataSource.signIn(email, password);
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
