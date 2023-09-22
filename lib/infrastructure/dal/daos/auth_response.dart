import 'package:clean_arch/core/model/base_model.dart';

class AuthResponse extends BaseModel<AuthResponse> {
  AuthResponse({
    String? message,
    bool? status,
  }) {
    _message = message;
    _status = status;
  }
  String? _message;
  bool? _status;
  String? get message => _message;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['status'] = _status;
    return map;
  }

  @override
  AuthResponse fromJson(Map<String, dynamic> data) {
    return AuthResponse(
      message: data['message'],
      status: data['status'],
    );
  }
}
