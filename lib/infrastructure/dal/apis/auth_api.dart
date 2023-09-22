import 'package:clean_arch/core/network/base/api_provider.dart';
import 'package:clean_arch/core/network/base/api_request_representable.dart';

import '../../../presentation/auth/controllers/auth.controller.dart';

enum AuthType { login, user }

class AuthApi implements APIRequestRepresentable {
  AuthParam? authParam;
  AuthType type;
  AuthApi.login({
    required this.authParam,
    this.type = AuthType.login,
  });
  AuthApi.user({
    this.type = AuthType.user,
  });

  @override
  bool get cache => false;

  @override
  String get endpoint {
    switch (type) {
      case AuthType.login:
        return "/studentLogin";
      case AuthType.user:
        return "";
    }
  }

  @override
  Map<String, String>? get headers => {};

  @override
  HTTPMethod get method {
    switch (type) {
      case AuthType.login:
        return HTTPMethod.post;
      case AuthType.user:
        return HTTPMethod.get;
    }
  }

  @override
  Stream request() {
    return APIProvider.instance.request(this);
  }

  @override
  get body {
    switch (type) {
      case AuthType.login:
        return {"registration_id": authParam?.userName ?? "No UserName", "password": authParam?.pass ?? "No Password"};
      case AuthType.user:
        return {};
    }
  }

  @override
  Map<String, String>? get query => null;

  @override
  // TODO: implement URL
  String get URL {
    switch (type) {
      case AuthType.login:
        return "https://cpa-api-uat.mileseducation.com";
      case AuthType.user:
        return "https://jsonplaceholder.typicode.com/todos/1";
    }
  }
}
