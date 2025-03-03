import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_app_flutter/api/api_client.dart';
import 'package:portfolio_app_flutter/models/post/post_request.dart';
import 'package:portfolio_app_flutter/models/post/post_response.dart';
import 'package:portfolio_app_flutter/models/post/post_response_body.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tumblr_api_provider.g.dart';

const defaultLimit = 10;

@riverpod
Future<PostResponseBody> tumblrApi(Ref ref, PostRequest request) async {
  Map<String, String> queryParams = {
    "offset": '${request.offset}',
    "limit": '${request.limit != null ? request.limit : defaultLimit}',
    "npf": "true",
  };
  if (request.tag != null) {
    queryParams["tag"] = request.tag!;
  }

  var result = await ApiClient.get<PostResponse>(
    queryParams: queryParams,
    fromJson: (json) => PostResponse.fromJson(json),
  );
  print(result.toString());

  return result.response;
}
