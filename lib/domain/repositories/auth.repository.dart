// * base network call repository

import 'package:clean_arch/core/network/base/response_handler.dart';

abstract class AuthRepository<T, P> {
  Stream<NetworkResponse<T>> auth(P params);

// Stream<NetworkResponse> postData(int userId);
}

abstract class UserRepository<T> {
  Stream<NetworkResponse<T>> user();

// Stream<NetworkResponse> postData(int userId);
}
