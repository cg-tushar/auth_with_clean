import 'package:clean_arch/core/state_handler/state_controller.dart';
import 'package:clean_arch/core/state_handler/super_state_controller.dart';
import 'package:clean_arch/services/logger_service.dart';

import '../../../domain/usecases/auth.usecase.dart';
import '../../../infrastructure/dal/daos/auth_response.dart';

class AuthController extends SuperStateController<AuthResponse>{
  AuthParam authParam = AuthParam.init();
  final AuthUseCase<AuthResponse, AuthParam> authUseCase;
  AuthController(this.authUseCase);

  @override
  void onReady() {
    // networkCalls(() => authUseCase.execute(params: authParam));
    super.onReady();
  }

  login() {
    networkCalls(() => authUseCase.execute(params: authParam));
    // net
  }

}

class AuthParam {
  String? userName;
  String? pass;

  AuthParam({
    required this.userName,
    required this.pass,
  });

  AuthParam.init();
}
