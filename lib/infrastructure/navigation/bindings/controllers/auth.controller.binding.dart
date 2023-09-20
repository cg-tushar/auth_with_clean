import 'package:get/get.dart';

import '../../../../domain/usecases/auth.usecase.dart';
import '../../../../presentation/auth/controllers/auth.controller.dart';
import '../../../dal/daos/auth_response.dart';

class AuthControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(Get.find<AuthUseCase<AuthResponse, AuthParam>>()),
    );
  }
}
