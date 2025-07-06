abstract class RemoteConfigService {
  Future<void> init();
  String getString(String key);
  bool getBool(String key);
  int getInt(String key);
  // Map<String, dynamic> getJson(String key);
}
