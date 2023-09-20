import 'package:get/get.dart';

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
