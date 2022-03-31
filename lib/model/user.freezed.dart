// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String name,
      required String email,
      required String imageUrl,
      required String githubUrl,
      required String twitterUrl,
      required String instagramUrl}) {
    return _User(
      name: name,
      email: email,
      imageUrl: imageUrl,
      githubUrl: githubUrl,
      twitterUrl: twitterUrl,
      instagramUrl: instagramUrl,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get githubUrl => throw _privateConstructorUsedError;
  String get twitterUrl => throw _privateConstructorUsedError;
  String get instagramUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String imageUrl,
      String githubUrl,
      String twitterUrl,
      String instagramUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? githubUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: githubUrl == freezed
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUrl: twitterUrl == freezed
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String imageUrl,
      String githubUrl,
      String twitterUrl,
      String instagramUrl});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? githubUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
  }) {
    return _then(_User(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: githubUrl == freezed
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUrl: twitterUrl == freezed
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.name,
      required this.email,
      required this.imageUrl,
      required this.githubUrl,
      required this.twitterUrl,
      required this.instagramUrl});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String imageUrl;
  @override
  final String githubUrl;
  @override
  final String twitterUrl;
  @override
  final String instagramUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(name: $name, email: $email, imageUrl: $imageUrl, githubUrl: $githubUrl, twitterUrl: $twitterUrl, instagramUrl: $instagramUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('githubUrl', githubUrl))
      ..add(DiagnosticsProperty('twitterUrl', twitterUrl))
      ..add(DiagnosticsProperty('instagramUrl', instagramUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.githubUrl, githubUrl) &&
            const DeepCollectionEquality()
                .equals(other.twitterUrl, twitterUrl) &&
            const DeepCollectionEquality()
                .equals(other.instagramUrl, instagramUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(githubUrl),
      const DeepCollectionEquality().hash(twitterUrl),
      const DeepCollectionEquality().hash(instagramUrl));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String name,
      required String email,
      required String imageUrl,
      required String githubUrl,
      required String twitterUrl,
      required String instagramUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get imageUrl;
  @override
  String get githubUrl;
  @override
  String get twitterUrl;
  @override
  String get instagramUrl;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
