import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class DevicesRepositoryImp implements DevicesRepository {
  final DevicesRemoteDataSource remoteDataSource;
  DevicesRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
