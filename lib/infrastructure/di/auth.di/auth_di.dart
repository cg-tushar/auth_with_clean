import 'package:get/get.dart';
import 'package:untitled1/domain/usecases/user.useccase.dart';
import 'package:untitled1/infrastructure/dal/daos/user_response.dart';
import 'package:untitled1/infrastructure/dal/repository/user.repo_impl.dart';
import 'package:untitled1/presentation/auth/controllers/user.controller.dart';

import '../../../domain/usecases/auth.usecase.dart';
import '../../../presentation/auth/controllers/auth.controller.dart';
import '../../dal/daos/auth_response.dart';
import '../../dal/repository/auth.repo_impl.dart';
class AuthDI {
  // * injecting dependency and initializing the storage
  static init() async {
    // * Creating instance of Response model class
    Get.put(AuthResponse());
    // * Creating instance of Implementation Repo class
    Get.put(AuthRepositoryIml<AuthResponse>());
    // * adding Implementation repo in the same use-case
    Get.put(AuthUseCase<AuthResponse, AuthParam>(Get.find<AuthRepositoryIml<AuthResponse>>()));
  }
}
class UserDI {
  // * injecting dependency and initializing the storage
  static init() async {
    // * Creating instance of Response model class
    Get.put(UserResponse());
    // * Creating instance of Implementation Repo class
    Get.put(UserRepoImpl<UserResponse>());
    // * adding Implementation repo in the same use-case
    Get.put(UserUseCase<UserResponse>(Get.find<UserRepoImpl<UserResponse>>()));

  }
}
