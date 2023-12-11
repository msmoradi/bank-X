import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'platform_info_native.dart'
    if (dart.library.html) 'platform_info_web.dart';

@injectable
class InfoInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    Map<String, String> platformInfo = await getPlatformInfo();

    // Add headers
    options.headers.addAll({
      "platform": platformInfo["platform"],
      "client-type": "customer",
      "locale": "fa",
      "app-version": platformInfo["appVersion"],
      "app-version-code": platformInfo["appVersionCode"],
      "device-uid": platformInfo["deviceUid"],
      "device": "${platformInfo["deviceBrand"]} ${platformInfo["deviceModel"]}",
    });

    return super.onRequest(options, handler);
  }
}
