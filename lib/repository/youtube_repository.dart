import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_sample_app/dio/dio_client.dart';
import 'package:riverpod_sample_app/network/api_result.dart';
import 'package:riverpod_sample_app/network/network_exceptions.dart';
import 'package:riverpod_sample_app/repository/response/youtube_search_response.dart';

class YoutubeRepository {
  static const String _baseUrl = 'https://www.googleapis.com/youtube/v3/';
  static const String _apiKey = String.fromEnvironment('YOUTUBE_API_KEY');
  DioClient _dioClient;

  YoutubeRepository() {
    _dioClient = DioClient(_baseUrl, Dio());
  }

  Future<ApiResult<YoutubeSearchResponse>> fetchMovieList() async {
    try {
      final response = await _dioClient.get(
        "search",
        queryParameters: {
          "key": _apiKey,
        },
      );
      log(response);
      return ApiResult.success(data: YoutubeSearchResponse());
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
