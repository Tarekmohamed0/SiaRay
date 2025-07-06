import '../repositories/repositories.dart';

class GetPersonalinfoUseCase {
  final PersonalinfoRepository repository;

  GetPersonalinfoUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
