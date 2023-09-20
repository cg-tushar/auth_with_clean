import 'package:clean_arch/core/database/storage.dart';
import 'package:clean_arch/core/network/connectivity/internet_connectivity.dart';
import 'package:get/get.dart';
import 'package:untitled1/infrastructure/di/auth.di/auth_di.dart';

class Dependencies {
  static init() {
    baseInit();
    AuthDI.init();
  }

  static baseInit() {
    LocalStorage.instance.initialize();
    ConnectivityCheck.instance.initConnectionCheck();
    Get.put(LocalStorage.instance);
    Get.put(ConnectivityCheck.instance);
  }
}
