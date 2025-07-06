import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class BatteryRepositoryImp implements BatteryRepository {
  final BatteryRemoteDataSource remoteDataSource;
  BatteryRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
