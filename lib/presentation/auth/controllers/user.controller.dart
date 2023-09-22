import 'package:clean_arch/core/state_handler/state_controller.dart';
import 'package:clean_arch/core/state_handler/super_state_controller.dart';
import 'package:untitled1/domain/usecases/user.useccase.dart';
import 'package:untitled1/infrastructure/dal/daos/user_response.dart';

import '../../../infrastructure/dal/daos/auth_response.dart';
import 'auth.controller.dart';

class UserController extends SuperStateController<UserResponse> {
  final UserUseCase<UserResponse> userUseCase;
  UserController(this.userUseCase);
  getUserData(){
    networkCalls(() => userUseCase.execute());

  }
}
