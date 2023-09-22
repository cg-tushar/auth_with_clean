import 'package:clean_arch/core/model/base_model.dart';
import 'package:clean_arch/core/network/base/response_handler.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../../domain/repositories/auth.repository.dart';
import '../apis/auth_api.dart';

class UserRepoImpl<T extends BaseModel> extends UserRepository<T> {
  @override
  Stream<NetworkResponse<T>> user() async* {
    yield NetworkResponse<T>.loading(); // Yield loading state
    await for (Response response in AuthApi.user().request()) {
      yield NetworkResponseHandler<T>().response(response);
    }
  }
}
