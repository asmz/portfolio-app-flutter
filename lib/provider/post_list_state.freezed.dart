// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostListState implements DiagnosticableTreeMixin {

 List<Post> get posts; int get offset; bool get hasNext;
/// Create a copy of PostListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostListStateCopyWith<PostListState> get copyWith => _$PostListStateCopyWithImpl<PostListState>(this as PostListState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostListState'))
    ..add(DiagnosticsProperty('posts', posts))..add(DiagnosticsProperty('offset', offset))..add(DiagnosticsProperty('hasNext', hasNext));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostListState&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),offset,hasNext);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostListState(posts: $posts, offset: $offset, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $PostListStateCopyWith<$Res>  {
  factory $PostListStateCopyWith(PostListState value, $Res Function(PostListState) _then) = _$PostListStateCopyWithImpl;
@useResult
$Res call({
 List<Post> posts, int offset, bool hasNext
});




}
/// @nodoc
class _$PostListStateCopyWithImpl<$Res>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._self, this._then);

  final PostListState _self;
  final $Res Function(PostListState) _then;

/// Create a copy of PostListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? offset = null,Object? hasNext = null,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _PostListState with DiagnosticableTreeMixin implements PostListState {
  const _PostListState({final  List<Post> posts = const [], this.offset = 0, this.hasNext = true}): _posts = posts;
  

 final  List<Post> _posts;
@override@JsonKey() List<Post> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey() final  int offset;
@override@JsonKey() final  bool hasNext;

/// Create a copy of PostListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostListStateCopyWith<_PostListState> get copyWith => __$PostListStateCopyWithImpl<_PostListState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PostListState'))
    ..add(DiagnosticsProperty('posts', posts))..add(DiagnosticsProperty('offset', offset))..add(DiagnosticsProperty('hasNext', hasNext));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostListState&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),offset,hasNext);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PostListState(posts: $posts, offset: $offset, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$PostListStateCopyWith<$Res> implements $PostListStateCopyWith<$Res> {
  factory _$PostListStateCopyWith(_PostListState value, $Res Function(_PostListState) _then) = __$PostListStateCopyWithImpl;
@override @useResult
$Res call({
 List<Post> posts, int offset, bool hasNext
});




}
/// @nodoc
class __$PostListStateCopyWithImpl<$Res>
    implements _$PostListStateCopyWith<$Res> {
  __$PostListStateCopyWithImpl(this._self, this._then);

  final _PostListState _self;
  final $Res Function(_PostListState) _then;

/// Create a copy of PostListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? offset = null,Object? hasNext = null,}) {
  return _then(_PostListState(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
