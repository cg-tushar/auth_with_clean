
import 'package:clean_arch/core/network/base/api_provider.dart';
import 'package:clean_arch/core/network/base/api_request_representable.dart';

import '../../../presentation/auth/controllers/auth.controller.dart';

class AuthApi<P> implements APIRequestRepresentable {
  AuthParam authParam;
  AuthApi.login({
    required this.authParam,
  });

  @override
  bool get cache => false;

  @override
  String get endpoint => "/studentLogin";

  @override
  Map<String, String>? get headers => {};

  @override
  HTTPMethod get method => HTTPMethod.post;


  @override
  Stream request() {
    return APIProvider.instance.request(this);
  }

  @override
  get body =>  {
    "registration_id": authParam.userName ?? "No UserName",
    "password": authParam.pass ?? "No Password",
  };

  @override
  Map<String, String>? get query => null;

  @override
  // TODO: implement URL
  String get URL => "https://cpa-api-uat.mileseducation.com";

}
