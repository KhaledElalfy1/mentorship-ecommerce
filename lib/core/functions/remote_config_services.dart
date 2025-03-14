import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RemoteConfigServices {
  Future<bool> updateRemoteConfig() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final remoteConfig = FirebaseRemoteConfig.instance;
    remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 60),
        minimumFetchInterval: const Duration(seconds: 1),
      ),
    );
    await remoteConfig.fetchAndActivate();
    String getRemoteConfigVersion = remoteConfig.getString('app_version');

    String getAppVersion = packageInfo.version;

    bool needToUpdate = getRemoteConfigVersion.compareTo(getAppVersion) == 1 ? true : false;
    return needToUpdate;
  }
}
