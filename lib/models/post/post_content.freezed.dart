// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostContent {

 String get type; String? get description; String? get title; String? get url; List<PostContentPoster>? get poster;
/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostContentCopyWith<PostContent> get copyWith => _$PostContentCopyWithImpl<PostContent>(this as PostContent, _$identity);

  /// Serializes this PostContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostContent&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.poster, poster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,title,url,const DeepCollectionEquality().hash(poster));

@override
String toString() {
  return 'PostContent(type: $type, description: $description, title: $title, url: $url, poster: $poster)';
}


}

/// @nodoc
abstract mixin class $PostContentCopyWith<$Res>  {
  factory $PostContentCopyWith(PostContent value, $Res Function(PostContent) _then) = _$PostContentCopyWithImpl;
@useResult
$Res call({
 String type, String? description, String? title, String? url, List<PostContentPoster>? poster
});




}
/// @nodoc
class _$PostContentCopyWithImpl<$Res>
    implements $PostContentCopyWith<$Res> {
  _$PostContentCopyWithImpl(this._self, this._then);

  final PostContent _self;
  final $Res Function(PostContent) _then;

/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? description = freezed,Object? title = freezed,Object? url = freezed,Object? poster = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as List<PostContentPoster>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostContent implements PostContent {
  const _PostContent({required this.type, this.description, this.title, this.url, final  List<PostContentPoster>? poster}): _poster = poster;
  factory _PostContent.fromJson(Map<String, dynamic> json) => _$PostContentFromJson(json);

@override final  String type;
@override final  String? description;
@override final  String? title;
@override final  String? url;
 final  List<PostContentPoster>? _poster;
@override List<PostContentPoster>? get poster {
  final value = _poster;
  if (value == null) return null;
  if (_poster is EqualUnmodifiableListView) return _poster;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostContentCopyWith<_PostContent> get copyWith => __$PostContentCopyWithImpl<_PostContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostContent&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._poster, _poster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,title,url,const DeepCollectionEquality().hash(_poster));

@override
String toString() {
  return 'PostContent(type: $type, description: $description, title: $title, url: $url, poster: $poster)';
}


}

/// @nodoc
abstract mixin class _$PostContentCopyWith<$Res> implements $PostContentCopyWith<$Res> {
  factory _$PostContentCopyWith(_PostContent value, $Res Function(_PostContent) _then) = __$PostContentCopyWithImpl;
@override @useResult
$Res call({
 String type, String? description, String? title, String? url, List<PostContentPoster>? poster
});




}
/// @nodoc
class __$PostContentCopyWithImpl<$Res>
    implements _$PostContentCopyWith<$Res> {
  __$PostContentCopyWithImpl(this._self, this._then);

  final _PostContent _self;
  final $Res Function(_PostContent) _then;

/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? description = freezed,Object? title = freezed,Object? url = freezed,Object? poster = freezed,}) {
  return _then(_PostContent(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self._poster : poster // ignore: cast_nullable_to_non_nullable
as List<PostContentPoster>?,
  ));
}


}

// dart format on
