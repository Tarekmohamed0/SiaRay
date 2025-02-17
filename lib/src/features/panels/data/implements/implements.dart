import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class PanelsRepositoryImp implements PanelsRepository {
  final PanelsRemoteDataSource remoteDataSource;
  PanelsRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
