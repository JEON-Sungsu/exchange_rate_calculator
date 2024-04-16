// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversion_rates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversionRatesModel _$ConversionRatesModelFromJson(Map<String, dynamic> json) {
  return _ConversionRatesModel.fromJson(json);
}

/// @nodoc
mixin _$ConversionRatesModel {
  num get usd => throw _privateConstructorUsedError;
  num get krw => throw _privateConstructorUsedError;
  num get eur => throw _privateConstructorUsedError;
  num get jpy => throw _privateConstructorUsedError;
  num get cny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversionRatesModelCopyWith<ConversionRatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionRatesModelCopyWith<$Res> {
  factory $ConversionRatesModelCopyWith(ConversionRatesModel value,
          $Res Function(ConversionRatesModel) then) =
      _$ConversionRatesModelCopyWithImpl<$Res, ConversionRatesModel>;
  @useResult
  $Res call({num usd, num krw, num eur, num jpy, num cny});
}

/// @nodoc
class _$ConversionRatesModelCopyWithImpl<$Res,
        $Val extends ConversionRatesModel>
    implements $ConversionRatesModelCopyWith<$Res> {
  _$ConversionRatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
    Object? krw = null,
    Object? eur = null,
    Object? jpy = null,
    Object? cny = null,
  }) {
    return _then(_value.copyWith(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as num,
      krw: null == krw
          ? _value.krw
          : krw // ignore: cast_nullable_to_non_nullable
              as num,
      eur: null == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as num,
      jpy: null == jpy
          ? _value.jpy
          : jpy // ignore: cast_nullable_to_non_nullable
              as num,
      cny: null == cny
          ? _value.cny
          : cny // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversionRatesModelImplCopyWith<$Res>
    implements $ConversionRatesModelCopyWith<$Res> {
  factory _$$ConversionRatesModelImplCopyWith(_$ConversionRatesModelImpl value,
          $Res Function(_$ConversionRatesModelImpl) then) =
      __$$ConversionRatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num usd, num krw, num eur, num jpy, num cny});
}

/// @nodoc
class __$$ConversionRatesModelImplCopyWithImpl<$Res>
    extends _$ConversionRatesModelCopyWithImpl<$Res, _$ConversionRatesModelImpl>
    implements _$$ConversionRatesModelImplCopyWith<$Res> {
  __$$ConversionRatesModelImplCopyWithImpl(_$ConversionRatesModelImpl _value,
      $Res Function(_$ConversionRatesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
    Object? krw = null,
    Object? eur = null,
    Object? jpy = null,
    Object? cny = null,
  }) {
    return _then(_$ConversionRatesModelImpl(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as num,
      krw: null == krw
          ? _value.krw
          : krw // ignore: cast_nullable_to_non_nullable
              as num,
      eur: null == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as num,
      jpy: null == jpy
          ? _value.jpy
          : jpy // ignore: cast_nullable_to_non_nullable
              as num,
      cny: null == cny
          ? _value.cny
          : cny // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversionRatesModelImpl implements _ConversionRatesModel {
  const _$ConversionRatesModelImpl(
      {required this.usd,
      required this.krw,
      required this.eur,
      required this.jpy,
      required this.cny});

  factory _$ConversionRatesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversionRatesModelImplFromJson(json);

  @override
  final num usd;
  @override
  final num krw;
  @override
  final num eur;
  @override
  final num jpy;
  @override
  final num cny;

  @override
  String toString() {
    return 'ConversionRatesModel(usd: $usd, krw: $krw, eur: $eur, jpy: $jpy, cny: $cny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversionRatesModelImpl &&
            (identical(other.usd, usd) || other.usd == usd) &&
            (identical(other.krw, krw) || other.krw == krw) &&
            (identical(other.eur, eur) || other.eur == eur) &&
            (identical(other.jpy, jpy) || other.jpy == jpy) &&
            (identical(other.cny, cny) || other.cny == cny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usd, krw, eur, jpy, cny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversionRatesModelImplCopyWith<_$ConversionRatesModelImpl>
      get copyWith =>
          __$$ConversionRatesModelImplCopyWithImpl<_$ConversionRatesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversionRatesModelImplToJson(
      this,
    );
  }
}

abstract class _ConversionRatesModel implements ConversionRatesModel {
  const factory _ConversionRatesModel(
      {required final num usd,
      required final num krw,
      required final num eur,
      required final num jpy,
      required final num cny}) = _$ConversionRatesModelImpl;

  factory _ConversionRatesModel.fromJson(Map<String, dynamic> json) =
      _$ConversionRatesModelImpl.fromJson;

  @override
  num get usd;
  @override
  num get krw;
  @override
  num get eur;
  @override
  num get jpy;
  @override
  num get cny;
  @override
  @JsonKey(ignore: true)
  _$$ConversionRatesModelImplCopyWith<_$ConversionRatesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
