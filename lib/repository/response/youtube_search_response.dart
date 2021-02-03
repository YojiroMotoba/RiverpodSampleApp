class YoutubeSearchResponse {
  String kind;
  String etag;
  String nextPageToken;
  String regionCode;
  PageInfo pageInfo;
  List<Item> items;
}

class PageInfo {
  int totalResults;
  int resultsPerPage;
}

class Item {
  String kind;
  String etag;
  Id id;
}

class Id {
  String kind;
  String videoId;
}
