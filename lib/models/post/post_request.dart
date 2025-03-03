import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_request.freezed.dart';

@freezed
abstract class PostRequest with _$PostRequest {
  const factory PostRequest({required int offset, int? limit, String? tag}) =
      _PostRequest;
}
