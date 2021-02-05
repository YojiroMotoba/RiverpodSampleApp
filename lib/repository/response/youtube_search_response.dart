import 'package:json_annotation/json_annotation.dart';

part 'youtube_search_response.g.dart';

@JsonSerializable(nullable: true)
class YoutubeSearchResponse {
  String kind;
  String etag;
  String nextPageToken;
  String regionCode;
  PageInfo pageInfo;
  List<Item> items;

  YoutubeSearchResponse();

  factory YoutubeSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$YoutubeSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$YoutubeSearchResponseToJson(this);
}

@JsonSerializable(nullable: true)
class PageInfo {
  int totalResults;
  int resultsPerPage;

  PageInfo();

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}

@JsonSerializable(nullable: true)
class Item {
  String kind;
  String etag;
  Id id;

  Item();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable(nullable: true)
class Id {
  String kind;
  String videoId;

  Id();

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}
