// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String?,
      notificationType: json['notificationType'] as String?,
      referenceId: (json['referenceId'] as num?)?.toInt(),
      referenceType: json['referenceType'] as String?,
      type: json['type'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      userType: json['userType'] as String?,
      status: json['status'] as String?,
      photoTypeId: (json['photoTypeId'] as num?)?.toInt(),
      photoType: json['photoType'] as String?,
      msgUserId: (json['msgUserId'] as num?)?.toInt(),
      isSeen: (json['isSeen'] as num?)?.toInt(),
      seenDate: json['seenDate'],
      isRead: (json['isRead'] as num?)?.toInt(),
      readDate: json['readDate'],
      reason: json['reason'],
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notificationType': instance.notificationType,
      'referenceId': instance.referenceId,
      'referenceType': instance.referenceType,
      'type': instance.type,
      'userId': instance.userId,
      'userType': instance.userType,
      'status': instance.status,
      'photoTypeId': instance.photoTypeId,
      'photoType': instance.photoType,
      'msgUserId': instance.msgUserId,
      'isSeen': instance.isSeen,
      'seenDate': instance.seenDate,
      'isRead': instance.isRead,
      'readDate': instance.readDate,
      'reason': instance.reason,
      'payload': instance.payload?.toJson(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'photoUrl': instance.photoUrl,
    };
