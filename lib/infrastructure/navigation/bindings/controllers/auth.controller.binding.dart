import 'package:get/get.dart';
import 'package:untitled1/domain/usecases/user.useccase.dart';
import 'package:untitled1/infrastructure/dal/daos/user_response.dart';
import 'package:untitled1/infrastructure/di/auth.di/auth_di.dart';
import 'package:untitled1/presentation/auth/controllers/user.controller.dart';

import '../../../../domain/usecases/auth.usecase.dart';
import '../../../../presentation/auth/controllers/auth.controller.dart';
import '../../../dal/daos/auth_response.dart';

class AuthControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(Get.find<AuthUseCase<AuthResponse, AuthParam>>()),
    );
    Get.lazyPut<UserController>(
      () => UserController(Get.find<UserUseCase<UserResponse>>()),
    );
    AuthDI.init();
    UserDI.init();

  }
}
