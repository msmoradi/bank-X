import 'dart:io';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';

Future<Map<String, String>> getPlatformInfo() async {
  String platform = Platform.operatingSystem;

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String appVersion = packageInfo.version;
  String appVersionCode = packageInfo.buildNumber;

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  String deviceUid = "unknown-device-uid"; // Fallback value
  String deviceBrand = "unknown-brand";
  String deviceModel = "unknown-model";

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    deviceUid = androidInfo.id.replaceAll(".", "_"); // Use fallback if androidId is null
    deviceBrand = androidInfo.brand;
    deviceModel = androidInfo.model;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceUid = iosInfo.identifierForVendor ?? deviceUid; // Use fallback if identifierForVendor is null
    deviceBrand = "Apple";
    deviceModel = iosInfo.utsname.machine;
  }

  return {
    "platform": platform,
    "appVersion": appVersion,
    "appVersionCode": appVersionCode,
    "deviceUid": deviceUid,
    "deviceBrand": deviceBrand,
    "deviceModel": deviceModel,
  };
}