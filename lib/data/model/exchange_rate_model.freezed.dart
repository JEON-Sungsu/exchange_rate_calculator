// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeRateModel _$ExchangeRateModelFromJson(Map<String, dynamic> json) {
  return _ExchangeRateModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRateModel {
  String get lastUpdated => throw _privateConstructorUsedError;
  ConversionRatesModel get conversionRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateModelCopyWith<ExchangeRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateModelCopyWith<$Res> {
  factory $ExchangeRateModelCopyWith(
          ExchangeRateModel value, $Res Function(ExchangeRateModel) then) =
      _$ExchangeRateModelCopyWithImpl<$Res, ExchangeRateModel>;
  @useResult
  $Res call({String lastUpdated, ConversionRatesModel conversionRates});

  $ConversionRatesModelCopyWith<$Res> get conversionRates;
}

/// @nodoc
class _$ExchangeRateModelCopyWithImpl<$Res, $Val extends ExchangeRateModel>
    implements $ExchangeRateModelCopyWith<$Res> {
  _$ExchangeRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as ConversionRatesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversionRatesModelCopyWith<$Res> get conversionRates {
    return $ConversionRatesModelCopyWith<$Res>(_value.conversionRates, (value) {
      return _then(_value.copyWith(conversionRates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExchangeRateModelImplCopyWith<$Res>
    implements $ExchangeRateModelCopyWith<$Res> {
  factory _$$ExchangeRateModelImplCopyWith(_$ExchangeRateModelImpl value,
          $Res Function(_$ExchangeRateModelImpl) then) =
      __$$ExchangeRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lastUpdated, ConversionRatesModel conversionRates});

  @override
  $ConversionRatesModelCopyWith<$Res> get conversionRates;
}

/// @nodoc
class __$$ExchangeRateModelImplCopyWithImpl<$Res>
    extends _$ExchangeRateModelCopyWithImpl<$Res, _$ExchangeRateModelImpl>
    implements _$$ExchangeRateModelImplCopyWith<$Res> {
  __$$ExchangeRateModelImplCopyWithImpl(_$ExchangeRateModelImpl _value,
      $Res Function(_$ExchangeRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? conversionRates = null,
  }) {
    return _then(_$ExchangeRateModelImpl(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as ConversionRatesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeRateModelImpl implements _ExchangeRateModel {
  const _$ExchangeRateModelImpl(
      {required this.lastUpdated, required this.conversionRates});

  factory _$ExchangeRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRateModelImplFromJson(json);

  @override
  final String lastUpdated;
  @override
  final ConversionRatesModel conversionRates;

  @override
  String toString() {
    return 'ExchangeRateModel(lastUpdated: $lastUpdated, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRateModelImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.conversionRates, conversionRates) ||
                other.conversionRates == conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated, conversionRates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRateModelImplCopyWith<_$ExchangeRateModelImpl> get copyWith =>
      __$$ExchangeRateModelImplCopyWithImpl<_$ExchangeRateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRateModelImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRateModel implements ExchangeRateModel {
  const factory _ExchangeRateModel(
          {required final String lastUpdated,
          required final ConversionRatesModel conversionRates}) =
      _$ExchangeRateModelImpl;

  factory _ExchangeRateModel.fromJson(Map<String, dynamic> json) =
      _$ExchangeRateModelImpl.fromJson;

  @override
  String get lastUpdated;
  @override
  ConversionRatesModel get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRateModelImplCopyWith<_$ExchangeRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
