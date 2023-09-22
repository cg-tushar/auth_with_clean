import 'package:clean_arch/core/model/base_model.dart';

class UserResponse extends BaseModel<UserResponse> {
  UserResponse({
    num? userId,
    num? id,
    String? title,
    bool? completed
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _completed = completed;
  }

  UserResponse.fromJson(dynamic json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _completed = json['completed'];
  }
  num? _userId;
  num? _id;
  String? _title;
  bool? _completed;
  num? get userId => _userId;
  num? get id => _id;
  String? get title => _title;
  bool? get completed => _completed;

  @override
  UserResponse fromJson(Map<String, dynamic> data) {
    return  UserResponse.fromJson(data);
  }
}
