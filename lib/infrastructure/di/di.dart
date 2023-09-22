import 'package:clean_arch/di/di_init.dart';
import 'package:untitled1/infrastructure/di/auth.di/auth_di.dart';

class Dependencies {
  static init() {
    DependencyInjector.init();
    AuthDI.init();
    UserDI.init();
  }
}
