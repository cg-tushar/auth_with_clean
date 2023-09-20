import 'package:clean_arch/core/model/base_model.dart';
import 'package:clean_arch/core/network/base/response_handler.dart';
import 'package:get/get.dart';
import '../../../domain/repositories/auth.repository.dart';
import '../../../presentation/auth/controllers/auth.controller.dart';
import '../apis/auth_api.dart';
import '../services/logger_service.dart';

class AuthRepositoryIml<T extends BaseModel> extends AuthRepository<T, AuthParam> {
  @override
  Stream<NetworkResponse<T>> auth(AuthParam params) async* {
    yield NetworkResponse<T>.loading(); // Yield loading state
    await for (Response response in AuthApi.login(authParam: params).request()) {
      yield NetworkResponseHandler<T>().response(response);
    }
  }
}
