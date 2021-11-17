import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:munchies_app/utils/keyXvalue.dart';

class getUserInfo {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  final gs = GetStorage();
  getPushToken_DeviceInfo() {
    FCMConfig.messaging.getToken().then((token) {
      gs.write('pushToken', token);
      log(token.toString());
    });

    GetPlatform.isAndroid ? androidInfoX() : iosInfoX();
  }

  iosInfoX() async {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    var devInfo = '''{
      "version": "${iosInfo.systemVersion}",
      "brand": "Iphone",
      "device": "${iosInfo.systemName}",
      "model": "${iosInfo.model}",
      "manufacturer": "Apple"
    }''';
    gs.write('devinfo', devInfo);
  }

  androidInfoX() async {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    var devInfo = '''{
      "version": "${androidInfo.version}",
      "brand": "${androidInfo.brand}",
      "device": "${androidInfo.device}",
      "model": "${androidInfo.model}",
      "manufacturer": "${androidInfo.manufacturer}"
    }''';
    gs.write('devinfo', devInfo);
  }

  hitDevInfo() async {
    var ptoken = gs.read('pushToken');

    var body =
        '''{"push_token": "${ptoken}", "device": ${gs.read('devinfo')}}''';

    var url = Uri.parse('$baseUrl/parse/functions/updateLoginInfo');
    var response = await http.post(url, body: body, headers: {
      "X-Parse-Application-Id": "food",
      "x-parse-session-token": gs.read('stoken')
    });
  }
}
