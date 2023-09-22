import 'package:clean_arch/core/network/base/response_handler.dart';
import 'package:clean_arch/core/usecases/no_param_usecase.dart';
import 'package:clean_arch/core/usecases/pram_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../repositories/auth.repository.dart';
// T: ResponseType
// P:Prams

class UserUseCase<T> extends NoParamUseCase<T> {
  final UserRepository<T> _repo;
  UserUseCase(this._repo);
  @override
  Stream<NetworkResponse<T>> execute() {
    return _repo.user();
  }
}
