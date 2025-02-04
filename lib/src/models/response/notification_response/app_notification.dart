import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khb_app/src/models/response/notification_response/payload.dart';

part 'gen/app_notification.freezed.dart';

part 'gen/app_notification.g.dart';

@unfreezed
class AppNotification with _$AppNotification {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory AppNotification({
    String? id,
    String? notificationType,
    int? referenceId,
    String? referenceType,
    String? type,
    int? userId,
    String? userType,
    String? status,
    int? photoTypeId,
    String? photoType,
    int? msgUserId,
    int? isSeen,
    dynamic seenDate,
    int? isRead,
    dynamic readDate,
    dynamic reason,
    Payload? payload,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? photoUrl,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}
