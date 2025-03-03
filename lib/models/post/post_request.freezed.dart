// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostRequest {

 int get offset; int? get limit; String? get tag;
/// Create a copy of PostRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostRequestCopyWith<PostRequest> get copyWith => _$PostRequestCopyWithImpl<PostRequest>(this as PostRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostRequest&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.tag, tag) || other.tag == tag));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,tag);

@override
String toString() {
  return 'PostRequest(offset: $offset, limit: $limit, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $PostRequestCopyWith<$Res>  {
  factory $PostRequestCopyWith(PostRequest value, $Res Function(PostRequest) _then) = _$PostRequestCopyWithImpl;
@useResult
$Res call({
 int offset, int? limit, String? tag
});




}
/// @nodoc
class _$PostRequestCopyWithImpl<$Res>
    implements $PostRequestCopyWith<$Res> {
  _$PostRequestCopyWithImpl(this._self, this._then);

  final PostRequest _self;
  final $Res Function(PostRequest) _then;

/// Create a copy of PostRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = freezed,Object? tag = freezed,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _PostRequest implements PostRequest {
  const _PostRequest({required this.offset, this.limit, this.tag});
  

@override final  int offset;
@override final  int? limit;
@override final  String? tag;

/// Create a copy of PostRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostRequestCopyWith<_PostRequest> get copyWith => __$PostRequestCopyWithImpl<_PostRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostRequest&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.tag, tag) || other.tag == tag));
}


@override
int get hashCode => Object.hash(runtimeType,offset,limit,tag);

@override
String toString() {
  return 'PostRequest(offset: $offset, limit: $limit, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$PostRequestCopyWith<$Res> implements $PostRequestCopyWith<$Res> {
  factory _$PostRequestCopyWith(_PostRequest value, $Res Function(_PostRequest) _then) = __$PostRequestCopyWithImpl;
@override @useResult
$Res call({
 int offset, int? limit, String? tag
});




}
/// @nodoc
class __$PostRequestCopyWithImpl<$Res>
    implements _$PostRequestCopyWith<$Res> {
  __$PostRequestCopyWithImpl(this._self, this._then);

  final _PostRequest _self;
  final $Res Function(_PostRequest) _then;

/// Create a copy of PostRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = freezed,Object? tag = freezed,}) {
  return _then(_PostRequest(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
