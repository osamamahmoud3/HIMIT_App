import 'package:flutter/material.dart';
import 'package:flutter_lms/Core/Network/local_Network.dart';
import 'package:flutter_lms/Core/notification/local_notification.dart';
import 'package:flutter_lms/myAppd.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cacheInitialization();
  await LocalNotificationService.init();
  await ScreenUtil.ensureScreenSize();
  token = CacheNetwork.getCachedata(key: 'token');
  user = CacheNetwork.getCachedata(key: 'user');
  password = CacheNetwork.getCachedata(key: 'password');

  runApp(
    const MyApp(),
  );
}
