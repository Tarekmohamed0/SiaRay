import '../repositories/repositories.dart';

class GetBatteryUseCase {
  final BatteryRepository repository;

  GetBatteryUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
