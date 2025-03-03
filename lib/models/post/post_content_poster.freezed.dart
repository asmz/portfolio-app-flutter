// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_content_poster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostContentPoster {

 String get url;
/// Create a copy of PostContentPoster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostContentPosterCopyWith<PostContentPoster> get copyWith => _$PostContentPosterCopyWithImpl<PostContentPoster>(this as PostContentPoster, _$identity);

  /// Serializes this PostContentPoster to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostContentPoster&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'PostContentPoster(url: $url)';
}


}

/// @nodoc
abstract mixin class $PostContentPosterCopyWith<$Res>  {
  factory $PostContentPosterCopyWith(PostContentPoster value, $Res Function(PostContentPoster) _then) = _$PostContentPosterCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$PostContentPosterCopyWithImpl<$Res>
    implements $PostContentPosterCopyWith<$Res> {
  _$PostContentPosterCopyWithImpl(this._self, this._then);

  final PostContentPoster _self;
  final $Res Function(PostContentPoster) _then;

/// Create a copy of PostContentPoster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostContentPoster implements PostContentPoster {
  const _PostContentPoster({required this.url});
  factory _PostContentPoster.fromJson(Map<String, dynamic> json) => _$PostContentPosterFromJson(json);

@override final  String url;

/// Create a copy of PostContentPoster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostContentPosterCopyWith<_PostContentPoster> get copyWith => __$PostContentPosterCopyWithImpl<_PostContentPoster>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostContentPosterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostContentPoster&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'PostContentPoster(url: $url)';
}


}

/// @nodoc
abstract mixin class _$PostContentPosterCopyWith<$Res> implements $PostContentPosterCopyWith<$Res> {
  factory _$PostContentPosterCopyWith(_PostContentPoster value, $Res Function(_PostContentPoster) _then) = __$PostContentPosterCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$PostContentPosterCopyWithImpl<$Res>
    implements _$PostContentPosterCopyWith<$Res> {
  __$PostContentPosterCopyWithImpl(this._self, this._then);

  final _PostContentPoster _self;
  final $Res Function(_PostContentPoster) _then;

/// Create a copy of PostContentPoster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_PostContentPoster(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
