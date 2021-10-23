// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomTabStateTearOff {
  const _$BottomTabStateTearOff();

  _BottomTabState call({int index = 0}) {
    return _BottomTabState(
      index: index,
    );
  }
}

/// @nodoc
const $BottomTabState = _$BottomTabStateTearOff();

/// @nodoc
mixin _$BottomTabState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomTabStateCopyWith<BottomTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomTabStateCopyWith<$Res> {
  factory $BottomTabStateCopyWith(
          BottomTabState value, $Res Function(BottomTabState) then) =
      _$BottomTabStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomTabStateCopyWithImpl<$Res>
    implements $BottomTabStateCopyWith<$Res> {
  _$BottomTabStateCopyWithImpl(this._value, this._then);

  final BottomTabState _value;
  // ignore: unused_field
  final $Res Function(BottomTabState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BottomTabStateCopyWith<$Res>
    implements $BottomTabStateCopyWith<$Res> {
  factory _$BottomTabStateCopyWith(
          _BottomTabState value, $Res Function(_BottomTabState) then) =
      __$BottomTabStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$BottomTabStateCopyWithImpl<$Res>
    extends _$BottomTabStateCopyWithImpl<$Res>
    implements _$BottomTabStateCopyWith<$Res> {
  __$BottomTabStateCopyWithImpl(
      _BottomTabState _value, $Res Function(_BottomTabState) _then)
      : super(_value, (v) => _then(v as _BottomTabState));

  @override
  _BottomTabState get _value => super._value as _BottomTabState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_BottomTabState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomTabState implements _BottomTabState {
  const _$_BottomTabState({this.index = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int index;

  @override
  String toString() {
    return 'BottomTabState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomTabState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$BottomTabStateCopyWith<_BottomTabState> get copyWith =>
      __$BottomTabStateCopyWithImpl<_BottomTabState>(this, _$identity);
}

abstract class _BottomTabState implements BottomTabState {
  const factory _BottomTabState({int index}) = _$_BottomTabState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BottomTabStateCopyWith<_BottomTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
