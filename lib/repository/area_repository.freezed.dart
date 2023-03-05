// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_name')
  String get areaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_kana')
  String get areaKana => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'area_name') String areaName,
      @JsonKey(name: 'area_kana') String areaKana});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? areaName = null,
    Object? areaKana = null,
  }) {
    return _then(_value.copyWith(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      areaName: null == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
      areaKana: null == areaKana
          ? _value.areaKana
          : areaKana // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$_AreaCopyWith(_$_Area value, $Res Function(_$_Area) then) =
      __$$_AreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') int areaId,
      @JsonKey(name: 'area_name') String areaName,
      @JsonKey(name: 'area_kana') String areaKana});
}

/// @nodoc
class __$$_AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res, _$_Area>
    implements _$$_AreaCopyWith<$Res> {
  __$$_AreaCopyWithImpl(_$_Area _value, $Res Function(_$_Area) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? areaName = null,
    Object? areaKana = null,
  }) {
    return _then(_$_Area(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      areaName: null == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
      areaKana: null == areaKana
          ? _value.areaKana
          : areaKana // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Area with DiagnosticableTreeMixin implements _Area {
  const _$_Area(
      {@JsonKey(name: 'area_id') required this.areaId,
      @JsonKey(name: 'area_name') required this.areaName,
      @JsonKey(name: 'area_kana') required this.areaKana});

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  @JsonKey(name: 'area_id')
  final int areaId;
  @override
  @JsonKey(name: 'area_name')
  final String areaName;
  @override
  @JsonKey(name: 'area_kana')
  final String areaKana;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Area(areaId: $areaId, areaName: $areaName, areaKana: $areaKana)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Area'))
      ..add(DiagnosticsProperty('areaId', areaId))
      ..add(DiagnosticsProperty('areaName', areaName))
      ..add(DiagnosticsProperty('areaKana', areaKana));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Area &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            (identical(other.areaKana, areaKana) ||
                other.areaKana == areaKana));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, areaId, areaName, areaKana);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaCopyWith<_$_Area> get copyWith =>
      __$$_AreaCopyWithImpl<_$_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {@JsonKey(name: 'area_id') required final int areaId,
      @JsonKey(name: 'area_name') required final String areaName,
      @JsonKey(name: 'area_kana') required final String areaKana}) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(name: 'area_name')
  String get areaName;
  @override
  @JsonKey(name: 'area_kana')
  String get areaKana;
  @override
  @JsonKey(ignore: true)
  _$$_AreaCopyWith<_$_Area> get copyWith => throw _privateConstructorUsedError;
}
