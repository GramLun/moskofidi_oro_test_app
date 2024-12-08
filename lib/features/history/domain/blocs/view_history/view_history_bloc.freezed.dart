// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewHistoryState {
  /// Files list in view history.
  List<String> get filesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewHistoryStateCopyWith<ViewHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewHistoryStateCopyWith<$Res> {
  factory $ViewHistoryStateCopyWith(
          ViewHistoryState value, $Res Function(ViewHistoryState) then) =
      _$ViewHistoryStateCopyWithImpl<$Res, ViewHistoryState>;
  @useResult
  $Res call({List<String> filesList});
}

/// @nodoc
class _$ViewHistoryStateCopyWithImpl<$Res, $Val extends ViewHistoryState>
    implements $ViewHistoryStateCopyWith<$Res> {
  _$ViewHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filesList = null,
  }) {
    return _then(_value.copyWith(
      filesList: null == filesList
          ? _value.filesList
          : filesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewHistoryStateImplCopyWith<$Res>
    implements $ViewHistoryStateCopyWith<$Res> {
  factory _$$ViewHistoryStateImplCopyWith(_$ViewHistoryStateImpl value,
          $Res Function(_$ViewHistoryStateImpl) then) =
      __$$ViewHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> filesList});
}

/// @nodoc
class __$$ViewHistoryStateImplCopyWithImpl<$Res>
    extends _$ViewHistoryStateCopyWithImpl<$Res, _$ViewHistoryStateImpl>
    implements _$$ViewHistoryStateImplCopyWith<$Res> {
  __$$ViewHistoryStateImplCopyWithImpl(_$ViewHistoryStateImpl _value,
      $Res Function(_$ViewHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filesList = null,
  }) {
    return _then(_$ViewHistoryStateImpl(
      filesList: null == filesList
          ? _value._filesList
          : filesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ViewHistoryStateImpl implements _ViewHistoryState {
  const _$ViewHistoryStateImpl({required final List<String> filesList})
      : _filesList = filesList;

  /// Files list in view history.
  final List<String> _filesList;

  /// Files list in view history.
  @override
  List<String> get filesList {
    if (_filesList is EqualUnmodifiableListView) return _filesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filesList);
  }

  @override
  String toString() {
    return 'ViewHistoryState(filesList: $filesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewHistoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._filesList, _filesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewHistoryStateImplCopyWith<_$ViewHistoryStateImpl> get copyWith =>
      __$$ViewHistoryStateImplCopyWithImpl<_$ViewHistoryStateImpl>(
          this, _$identity);
}

abstract class _ViewHistoryState implements ViewHistoryState {
  const factory _ViewHistoryState({required final List<String> filesList}) =
      _$ViewHistoryStateImpl;

  @override

  /// Files list in view history.
  List<String> get filesList;
  @override
  @JsonKey(ignore: true)
  _$$ViewHistoryStateImplCopyWith<_$ViewHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewHistoryEvent {
  String get fileUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileUrl) addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fileUrl)? addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileUrl)? addUrlToStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddViewedFileEvent value) addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddViewedFileEvent value)? addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddViewedFileEvent value)? addUrlToStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewHistoryEventCopyWith<ViewHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewHistoryEventCopyWith<$Res> {
  factory $ViewHistoryEventCopyWith(
          ViewHistoryEvent value, $Res Function(ViewHistoryEvent) then) =
      _$ViewHistoryEventCopyWithImpl<$Res, ViewHistoryEvent>;
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class _$ViewHistoryEventCopyWithImpl<$Res, $Val extends ViewHistoryEvent>
    implements $ViewHistoryEventCopyWith<$Res> {
  _$ViewHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddViewedFileEventImplCopyWith<$Res>
    implements $ViewHistoryEventCopyWith<$Res> {
  factory _$$AddViewedFileEventImplCopyWith(_$AddViewedFileEventImpl value,
          $Res Function(_$AddViewedFileEventImpl) then) =
      __$$AddViewedFileEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class __$$AddViewedFileEventImplCopyWithImpl<$Res>
    extends _$ViewHistoryEventCopyWithImpl<$Res, _$AddViewedFileEventImpl>
    implements _$$AddViewedFileEventImplCopyWith<$Res> {
  __$$AddViewedFileEventImplCopyWithImpl(_$AddViewedFileEventImpl _value,
      $Res Function(_$AddViewedFileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_$AddViewedFileEventImpl(
      null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddViewedFileEventImpl implements AddViewedFileEvent {
  const _$AddViewedFileEventImpl(this.fileUrl);

  @override
  final String fileUrl;

  @override
  String toString() {
    return 'ViewHistoryEvent.addUrlToStore(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddViewedFileEventImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddViewedFileEventImplCopyWith<_$AddViewedFileEventImpl> get copyWith =>
      __$$AddViewedFileEventImplCopyWithImpl<_$AddViewedFileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileUrl) addUrlToStore,
  }) {
    return addUrlToStore(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fileUrl)? addUrlToStore,
  }) {
    return addUrlToStore?.call(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileUrl)? addUrlToStore,
    required TResult orElse(),
  }) {
    if (addUrlToStore != null) {
      return addUrlToStore(fileUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddViewedFileEvent value) addUrlToStore,
  }) {
    return addUrlToStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddViewedFileEvent value)? addUrlToStore,
  }) {
    return addUrlToStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddViewedFileEvent value)? addUrlToStore,
    required TResult orElse(),
  }) {
    if (addUrlToStore != null) {
      return addUrlToStore(this);
    }
    return orElse();
  }
}

abstract class AddViewedFileEvent implements ViewHistoryEvent {
  const factory AddViewedFileEvent(final String fileUrl) =
      _$AddViewedFileEventImpl;

  @override
  String get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$$AddViewedFileEventImplCopyWith<_$AddViewedFileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
