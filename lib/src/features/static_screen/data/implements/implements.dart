import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class Static_screenRepositoryImp implements Static_screenRepository {
  final Static_screenRemoteDataSource remoteDataSource;
  Static_screenRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
