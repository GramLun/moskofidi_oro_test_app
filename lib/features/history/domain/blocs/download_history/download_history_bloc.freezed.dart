// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadHistoryState {
  /// Files list in download history.
  List<String> get filesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadHistoryStateCopyWith<DownloadHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadHistoryStateCopyWith<$Res> {
  factory $DownloadHistoryStateCopyWith(DownloadHistoryState value,
          $Res Function(DownloadHistoryState) then) =
      _$DownloadHistoryStateCopyWithImpl<$Res, DownloadHistoryState>;
  @useResult
  $Res call({List<String> filesList});
}

/// @nodoc
class _$DownloadHistoryStateCopyWithImpl<$Res,
        $Val extends DownloadHistoryState>
    implements $DownloadHistoryStateCopyWith<$Res> {
  _$DownloadHistoryStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DownloadHistoryStateImplCopyWith<$Res>
    implements $DownloadHistoryStateCopyWith<$Res> {
  factory _$$DownloadHistoryStateImplCopyWith(_$DownloadHistoryStateImpl value,
          $Res Function(_$DownloadHistoryStateImpl) then) =
      __$$DownloadHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> filesList});
}

/// @nodoc
class __$$DownloadHistoryStateImplCopyWithImpl<$Res>
    extends _$DownloadHistoryStateCopyWithImpl<$Res, _$DownloadHistoryStateImpl>
    implements _$$DownloadHistoryStateImplCopyWith<$Res> {
  __$$DownloadHistoryStateImplCopyWithImpl(_$DownloadHistoryStateImpl _value,
      $Res Function(_$DownloadHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filesList = null,
  }) {
    return _then(_$DownloadHistoryStateImpl(
      filesList: null == filesList
          ? _value._filesList
          : filesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DownloadHistoryStateImpl implements _DownloadHistoryState {
  const _$DownloadHistoryStateImpl({required final List<String> filesList})
      : _filesList = filesList;

  /// Files list in download history.
  final List<String> _filesList;

  /// Files list in download history.
  @override
  List<String> get filesList {
    if (_filesList is EqualUnmodifiableListView) return _filesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filesList);
  }

  @override
  String toString() {
    return 'DownloadHistoryState(filesList: $filesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadHistoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._filesList, _filesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadHistoryStateImplCopyWith<_$DownloadHistoryStateImpl>
      get copyWith =>
          __$$DownloadHistoryStateImplCopyWithImpl<_$DownloadHistoryStateImpl>(
              this, _$identity);
}

abstract class _DownloadHistoryState implements DownloadHistoryState {
  const factory _DownloadHistoryState({required final List<String> filesList}) =
      _$DownloadHistoryStateImpl;

  @override

  /// Files list in download history.
  List<String> get filesList;
  @override
  @JsonKey(ignore: true)
  _$$DownloadHistoryStateImplCopyWith<_$DownloadHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadHistoryEvent {
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
    required TResult Function(AddDownloadedFileEvent value) addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddDownloadedFileEvent value)? addUrlToStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddDownloadedFileEvent value)? addUrlToStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadHistoryEventCopyWith<DownloadHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadHistoryEventCopyWith<$Res> {
  factory $DownloadHistoryEventCopyWith(DownloadHistoryEvent value,
          $Res Function(DownloadHistoryEvent) then) =
      _$DownloadHistoryEventCopyWithImpl<$Res, DownloadHistoryEvent>;
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class _$DownloadHistoryEventCopyWithImpl<$Res,
        $Val extends DownloadHistoryEvent>
    implements $DownloadHistoryEventCopyWith<$Res> {
  _$DownloadHistoryEventCopyWithImpl(this._value, this._then);

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
abstract class _$$AddDownloadedFileEventImplCopyWith<$Res>
    implements $DownloadHistoryEventCopyWith<$Res> {
  factory _$$AddDownloadedFileEventImplCopyWith(
          _$AddDownloadedFileEventImpl value,
          $Res Function(_$AddDownloadedFileEventImpl) then) =
      __$$AddDownloadedFileEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class __$$AddDownloadedFileEventImplCopyWithImpl<$Res>
    extends _$DownloadHistoryEventCopyWithImpl<$Res,
        _$AddDownloadedFileEventImpl>
    implements _$$AddDownloadedFileEventImplCopyWith<$Res> {
  __$$AddDownloadedFileEventImplCopyWithImpl(
      _$AddDownloadedFileEventImpl _value,
      $Res Function(_$AddDownloadedFileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_$AddDownloadedFileEventImpl(
      null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddDownloadedFileEventImpl implements AddDownloadedFileEvent {
  const _$AddDownloadedFileEventImpl(this.fileUrl);

  @override
  final String fileUrl;

  @override
  String toString() {
    return 'DownloadHistoryEvent.addUrlToStore(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDownloadedFileEventImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDownloadedFileEventImplCopyWith<_$AddDownloadedFileEventImpl>
      get copyWith => __$$AddDownloadedFileEventImplCopyWithImpl<
          _$AddDownloadedFileEventImpl>(this, _$identity);

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
    required TResult Function(AddDownloadedFileEvent value) addUrlToStore,
  }) {
    return addUrlToStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddDownloadedFileEvent value)? addUrlToStore,
  }) {
    return addUrlToStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddDownloadedFileEvent value)? addUrlToStore,
    required TResult orElse(),
  }) {
    if (addUrlToStore != null) {
      return addUrlToStore(this);
    }
    return orElse();
  }
}

abstract class AddDownloadedFileEvent implements DownloadHistoryEvent {
  const factory AddDownloadedFileEvent(final String fileUrl) =
      _$AddDownloadedFileEventImpl;

  @override
  String get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$$AddDownloadedFileEventImplCopyWith<_$AddDownloadedFileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
