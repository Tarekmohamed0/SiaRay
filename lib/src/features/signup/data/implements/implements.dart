import 'package:dartz/dartz.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';

import '../sources/remote_dataSource.dart';
import '../../domain/repositories/signUp_repo.dart';

class SignupRepoImpl implements SignupRepo {
  final SignupRemoteDataSource remoteDataSource;
  SignupRepoImpl({required this.remoteDataSource});

  @override
  Future<Either> signupSobase(String email, String password, dynamic name) {
    return remoteDataSource.signupSubase(email, password, name);
  }

  @override
  Future<UserModel> signUp(
      String email, String password, String name, String phone, String city) {
    return remoteDataSource.signUp(
      email,
      password,
      name,
      phone,
      city,
    );
  }
}

// ... example ...
//
// Future<User> getUser(String userId) async {
//     return remoteDataSource.getUser(userId);
//   }
// ...
