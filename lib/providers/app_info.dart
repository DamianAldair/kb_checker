import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  static final AppInfo _instance = AppInfo._();
  AppInfo._();
  factory AppInfo() => _instance;

  late PackageInfo _info;

  Future<void> init() async {
    _info = await PackageInfo.fromPlatform();
  }

  String get appName => _info.appName;

  String get version => _info.version;

  String get author => 'Damian Aldair';

  String get authorUrl => 'https://damianaldair.github.io';
}
