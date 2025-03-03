// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_response_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostResponseBody {

 List<Post> get posts;@JsonKey(name: "total_posts") int get totalPosts;
/// Create a copy of PostResponseBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostResponseBodyCopyWith<PostResponseBody> get copyWith => _$PostResponseBodyCopyWithImpl<PostResponseBody>(this as PostResponseBody, _$identity);

  /// Serializes this PostResponseBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostResponseBody&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.totalPosts, totalPosts) || other.totalPosts == totalPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),totalPosts);

@override
String toString() {
  return 'PostResponseBody(posts: $posts, totalPosts: $totalPosts)';
}


}

/// @nodoc
abstract mixin class $PostResponseBodyCopyWith<$Res>  {
  factory $PostResponseBodyCopyWith(PostResponseBody value, $Res Function(PostResponseBody) _then) = _$PostResponseBodyCopyWithImpl;
@useResult
$Res call({
 List<Post> posts,@JsonKey(name: "total_posts") int totalPosts
});




}
/// @nodoc
class _$PostResponseBodyCopyWithImpl<$Res>
    implements $PostResponseBodyCopyWith<$Res> {
  _$PostResponseBodyCopyWithImpl(this._self, this._then);

  final PostResponseBody _self;
  final $Res Function(PostResponseBody) _then;

/// Create a copy of PostResponseBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? totalPosts = null,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,totalPosts: null == totalPosts ? _self.totalPosts : totalPosts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostResponseBody implements PostResponseBody {
  const _PostResponseBody({required final  List<Post> posts, @JsonKey(name: "total_posts") required this.totalPosts}): _posts = posts;
  factory _PostResponseBody.fromJson(Map<String, dynamic> json) => _$PostResponseBodyFromJson(json);

 final  List<Post> _posts;
@override List<Post> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey(name: "total_posts") final  int totalPosts;

/// Create a copy of PostResponseBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostResponseBodyCopyWith<_PostResponseBody> get copyWith => __$PostResponseBodyCopyWithImpl<_PostResponseBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostResponseBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostResponseBody&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.totalPosts, totalPosts) || other.totalPosts == totalPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),totalPosts);

@override
String toString() {
  return 'PostResponseBody(posts: $posts, totalPosts: $totalPosts)';
}


}

/// @nodoc
abstract mixin class _$PostResponseBodyCopyWith<$Res> implements $PostResponseBodyCopyWith<$Res> {
  factory _$PostResponseBodyCopyWith(_PostResponseBody value, $Res Function(_PostResponseBody) _then) = __$PostResponseBodyCopyWithImpl;
@override @useResult
$Res call({
 List<Post> posts,@JsonKey(name: "total_posts") int totalPosts
});




}
/// @nodoc
class __$PostResponseBodyCopyWithImpl<$Res>
    implements _$PostResponseBodyCopyWith<$Res> {
  __$PostResponseBodyCopyWithImpl(this._self, this._then);

  final _PostResponseBody _self;
  final $Res Function(_PostResponseBody) _then;

/// Create a copy of PostResponseBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? totalPosts = null,}) {
  return _then(_PostResponseBody(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,totalPosts: null == totalPosts ? _self.totalPosts : totalPosts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
