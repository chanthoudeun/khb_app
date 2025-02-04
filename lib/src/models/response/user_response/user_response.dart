import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'user.dart';

part 'gen/user_response.freezed.dart';
part 'gen/user_response.g.dart';

@unfreezed
class UserResponse with _$UserResponse {
  @HiveType(typeId: 1)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory UserResponse({
    @HiveField(0) User? user,
    @HiveField(1) String? accessToken,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
