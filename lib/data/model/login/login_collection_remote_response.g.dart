// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'login_collection_remote_response.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// LoginCollectionRemoteResponse _$LoginCollectionRemoteResponseFromJson(
//         Map<String, dynamic> json) =>
//     LoginCollectionRemoteResponse(
//       logins: (json['logins'] as List<dynamic>?)
//           ?.map((e) => LoginRemoteResponse.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       statuses: json['statuses'] == null
//           ? null
//           : StatusRemoteResponse.fromJson(
//               json['statuses'] as Map<String, dynamic>),
//     );

// Map<String, dynamic> _$LoginCollectionRemoteResponseToJson(
//         LoginCollectionRemoteResponse instance) =>
//     <String, dynamic>{
//       'logins': instance.logins,
//       'statuses': instance.statuses,
//     };
