import 'package:clean_arch/core/network/base/response_handler.dart';
import 'package:clean_arch/core/usecases/pram_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../repositories/auth.repository.dart';
// T: ResponseType
// P:Prams

class AuthUseCase<T,P> extends ParamUseCase<T,P>{
  final AuthRepository<T,P> _repo;
  AuthUseCase(this._repo);
  @override
  Stream<NetworkResponse<T>> execute({required P params}) {
    return _repo.auth(params);
  }


}