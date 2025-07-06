import 'package:final_project/src/core/services/firebase/remote_config_service.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigService implements RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
  @override
  bool getBool(String key) => _remoteConfig.getBool(key);

  @override
  int getInt(String key) => _remoteConfig.getInt(key);

  // @override
  // Map<String, dynamic> getJson(String key) =>
  //     _remoteConfig.getValue(key) as Map<String, dynamic>;

  @override
  String getString(String key) => _remoteConfig.getString(key);

  @override
  Future<void> init() async {
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 2),
        minimumFetchInterval: const Duration(seconds: 0),
      ),
    );
    await _remoteConfig.setDefaults({
      'show_setting_ui': false,
    });

    await _remoteConfig.fetchAndActivate();
  }
}
