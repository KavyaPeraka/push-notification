import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
// click on floating action button for FCM key -- in the debug console we will get FCM key
Future<String?> getFcmToken() async {
  if (Platform.isIOS) {
    String? fcmKey = await FirebaseMessaging.instance.getToken();
    return fcmKey;
  }
  String? fcmKey = await FirebaseMessaging.instance.getToken();
  return fcmKey;
}