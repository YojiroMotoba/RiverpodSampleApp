// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YoutubeSearchResponse _$YoutubeSearchResponseFromJson(
    Map<String, dynamic> json) {
  return YoutubeSearchResponse()
    ..kind = json['kind'] as String
    ..etag = json['etag'] as String
    ..nextPageToken = json['nextPageToken'] as String
    ..regionCode = json['regionCode'] as String
    ..pageInfo = json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>)
    ..items = (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$YoutubeSearchResponseToJson(
        YoutubeSearchResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'nextPageToken': instance.nextPageToken,
      'regionCode': instance.regionCode,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return PageInfo()
    ..totalResults = json['totalResults'] as int
    ..resultsPerPage = json['resultsPerPage'] as int;
}

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item()
    ..kind = json['kind'] as String
    ..etag = json['etag'] as String
    ..id = json['id'] == null
        ? null
        : Id.fromJson(json['id'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
    };

Id _$IdFromJson(Map<String, dynamic> json) {
  return Id()
    ..kind = json['kind'] as String
    ..videoId = json['videoId'] as String;
}

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
