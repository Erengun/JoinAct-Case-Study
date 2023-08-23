import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_request.freezed.dart';
part 'category_request.g.dart';

/// [CategoryRequest] is a request model for [AdminRestClient.createCategory].
@freezed
class CategoryRequest with _$CategoryRequest {
  const factory CategoryRequest({
    String? devKey,
    String? name,
  }) = _CategoryRequest;

  factory CategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestFromJson(json);
}
