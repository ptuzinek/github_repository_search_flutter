// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchRepositoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesStateCopyWith<$Res> {
  factory $SearchRepositoriesStateCopyWith(SearchRepositoriesState value,
          $Res Function(SearchRepositoriesState) then) =
      _$SearchRepositoriesStateCopyWithImpl<$Res, SearchRepositoriesState>;
}

/// @nodoc
class _$SearchRepositoriesStateCopyWithImpl<$Res,
        $Val extends SearchRepositoriesState>
    implements $SearchRepositoriesStateCopyWith<$Res> {
  _$SearchRepositoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateIdleImplCopyWith<$Res> {
  factory _$$SearchRepositoriesStateIdleImplCopyWith(
          _$SearchRepositoriesStateIdleImpl value,
          $Res Function(_$SearchRepositoriesStateIdleImpl) then) =
      __$$SearchRepositoriesStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchRepositoriesStateIdleImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateIdleImpl>
    implements _$$SearchRepositoriesStateIdleImplCopyWith<$Res> {
  __$$SearchRepositoriesStateIdleImplCopyWithImpl(
      _$SearchRepositoriesStateIdleImpl _value,
      $Res Function(_$SearchRepositoriesStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchRepositoriesStateIdleImpl implements SearchRepositoriesStateIdle {
  const _$SearchRepositoriesStateIdleImpl();

  @override
  String toString() {
    return 'SearchRepositoriesState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateIdle
    implements SearchRepositoriesState, StateBuilder {
  const factory SearchRepositoriesStateIdle() =
      _$SearchRepositoriesStateIdleImpl;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateLoadingImplCopyWith<$Res> {
  factory _$$SearchRepositoriesStateLoadingImplCopyWith(
          _$SearchRepositoriesStateLoadingImpl value,
          $Res Function(_$SearchRepositoriesStateLoadingImpl) then) =
      __$$SearchRepositoriesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchRepositoriesStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateLoadingImpl>
    implements _$$SearchRepositoriesStateLoadingImplCopyWith<$Res> {
  __$$SearchRepositoriesStateLoadingImplCopyWithImpl(
      _$SearchRepositoriesStateLoadingImpl _value,
      $Res Function(_$SearchRepositoriesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchRepositoriesStateLoadingImpl
    implements SearchRepositoriesStateLoading {
  const _$SearchRepositoriesStateLoadingImpl();

  @override
  String toString() {
    return 'SearchRepositoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateLoading
    implements SearchRepositoriesState, StateBuilder {
  const factory SearchRepositoriesStateLoading() =
      _$SearchRepositoriesStateLoadingImpl;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateLoadedImplCopyWith<$Res> {
  factory _$$SearchRepositoriesStateLoadedImplCopyWith(
          _$SearchRepositoriesStateLoadedImpl value,
          $Res Function(_$SearchRepositoriesStateLoadedImpl) then) =
      __$$SearchRepositoriesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GithubRepository> repositories, bool showLoadMoreButton});
}

/// @nodoc
class __$$SearchRepositoriesStateLoadedImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateLoadedImpl>
    implements _$$SearchRepositoriesStateLoadedImplCopyWith<$Res> {
  __$$SearchRepositoriesStateLoadedImplCopyWithImpl(
      _$SearchRepositoriesStateLoadedImpl _value,
      $Res Function(_$SearchRepositoriesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
    Object? showLoadMoreButton = null,
  }) {
    return _then(_$SearchRepositoriesStateLoadedImpl(
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepository>,
      showLoadMoreButton: null == showLoadMoreButton
          ? _value.showLoadMoreButton
          : showLoadMoreButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchRepositoriesStateLoadedImpl
    implements SearchRepositoriesStateLoaded {
  const _$SearchRepositoriesStateLoadedImpl(
      {required final List<GithubRepository> repositories,
      required this.showLoadMoreButton})
      : _repositories = repositories;

  final List<GithubRepository> _repositories;
  @override
  List<GithubRepository> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  final bool showLoadMoreButton;

  @override
  String toString() {
    return 'SearchRepositoriesState.loaded(repositories: $repositories, showLoadMoreButton: $showLoadMoreButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.showLoadMoreButton, showLoadMoreButton) ||
                other.showLoadMoreButton == showLoadMoreButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_repositories), showLoadMoreButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesStateLoadedImplCopyWith<
          _$SearchRepositoriesStateLoadedImpl>
      get copyWith => __$$SearchRepositoriesStateLoadedImplCopyWithImpl<
          _$SearchRepositoriesStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return loaded(repositories, showLoadMoreButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return loaded?.call(repositories, showLoadMoreButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(repositories, showLoadMoreButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateLoaded
    implements SearchRepositoriesState, StateBuilder {
  const factory SearchRepositoriesStateLoaded(
          {required final List<GithubRepository> repositories,
          required final bool showLoadMoreButton}) =
      _$SearchRepositoriesStateLoadedImpl;

  List<GithubRepository> get repositories;
  bool get showLoadMoreButton;
  @JsonKey(ignore: true)
  _$$SearchRepositoriesStateLoadedImplCopyWith<
          _$SearchRepositoriesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateErrorImplCopyWith<$Res> {
  factory _$$SearchRepositoriesStateErrorImplCopyWith(
          _$SearchRepositoriesStateErrorImpl value,
          $Res Function(_$SearchRepositoriesStateErrorImpl) then) =
      __$$SearchRepositoriesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SearchRepositoriesStateErrorImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateErrorImpl>
    implements _$$SearchRepositoriesStateErrorImplCopyWith<$Res> {
  __$$SearchRepositoriesStateErrorImplCopyWithImpl(
      _$SearchRepositoriesStateErrorImpl _value,
      $Res Function(_$SearchRepositoriesStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SearchRepositoriesStateErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchRepositoriesStateErrorImpl
    implements SearchRepositoriesStateError {
  const _$SearchRepositoriesStateErrorImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'SearchRepositoriesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesStateErrorImplCopyWith<
          _$SearchRepositoriesStateErrorImpl>
      get copyWith => __$$SearchRepositoriesStateErrorImplCopyWithImpl<
          _$SearchRepositoriesStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateError
    implements SearchRepositoriesState, StateBuilder {
  const factory SearchRepositoriesStateError([final String? message]) =
      _$SearchRepositoriesStateErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$SearchRepositoriesStateErrorImplCopyWith<
          _$SearchRepositoriesStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateLoadingNewItemsImplCopyWith<$Res> {
  factory _$$SearchRepositoriesStateLoadingNewItemsImplCopyWith(
          _$SearchRepositoriesStateLoadingNewItemsImpl value,
          $Res Function(_$SearchRepositoriesStateLoadingNewItemsImpl) then) =
      __$$SearchRepositoriesStateLoadingNewItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchRepositoriesStateLoadingNewItemsImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateLoadingNewItemsImpl>
    implements _$$SearchRepositoriesStateLoadingNewItemsImplCopyWith<$Res> {
  __$$SearchRepositoriesStateLoadingNewItemsImplCopyWithImpl(
      _$SearchRepositoriesStateLoadingNewItemsImpl _value,
      $Res Function(_$SearchRepositoriesStateLoadingNewItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchRepositoriesStateLoadingNewItemsImpl
    implements SearchRepositoriesStateLoadingNewItems {
  const _$SearchRepositoriesStateLoadingNewItemsImpl();

  @override
  String toString() {
    return 'SearchRepositoriesState.loadingNewItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateLoadingNewItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return loadingNewItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return loadingNewItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loadingNewItems != null) {
      return loadingNewItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return loadingNewItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return loadingNewItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loadingNewItems != null) {
      return loadingNewItems(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateLoadingNewItems
    implements SearchRepositoriesState, StateListener {
  const factory SearchRepositoriesStateLoadingNewItems() =
      _$SearchRepositoriesStateLoadingNewItemsImpl;
}

/// @nodoc
abstract class _$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWith<
    $Res> {
  factory _$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWith(
          _$SearchRepositoriesStateLoadingNewItemsFinishedImpl value,
          $Res Function(_$SearchRepositoriesStateLoadingNewItemsFinishedImpl)
              then) =
      __$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateLoadingNewItemsFinishedImpl>
    implements
        _$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWith<$Res> {
  __$$SearchRepositoriesStateLoadingNewItemsFinishedImplCopyWithImpl(
      _$SearchRepositoriesStateLoadingNewItemsFinishedImpl _value,
      $Res Function(_$SearchRepositoriesStateLoadingNewItemsFinishedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchRepositoriesStateLoadingNewItemsFinishedImpl
    implements SearchRepositoriesStateLoadingNewItemsFinished {
  const _$SearchRepositoriesStateLoadingNewItemsFinishedImpl();

  @override
  String toString() {
    return 'SearchRepositoriesState.loadingNewItemsFinished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateLoadingNewItemsFinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)
        loaded,
    required TResult Function(String? message) error,
    required TResult Function() loadingNewItems,
    required TResult Function() loadingNewItemsFinished,
  }) {
    return loadingNewItemsFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult? Function(String? message)? error,
    TResult? Function()? loadingNewItems,
    TResult? Function()? loadingNewItemsFinished,
  }) {
    return loadingNewItemsFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<GithubRepository> repositories, bool showLoadMoreButton)?
        loaded,
    TResult Function(String? message)? error,
    TResult Function()? loadingNewItems,
    TResult Function()? loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loadingNewItemsFinished != null) {
      return loadingNewItemsFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepositoriesStateIdle value) idle,
    required TResult Function(SearchRepositoriesStateLoading value) loading,
    required TResult Function(SearchRepositoriesStateLoaded value) loaded,
    required TResult Function(SearchRepositoriesStateError value) error,
    required TResult Function(SearchRepositoriesStateLoadingNewItems value)
        loadingNewItems,
    required TResult Function(
            SearchRepositoriesStateLoadingNewItemsFinished value)
        loadingNewItemsFinished,
  }) {
    return loadingNewItemsFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepositoriesStateIdle value)? idle,
    TResult? Function(SearchRepositoriesStateLoading value)? loading,
    TResult? Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult? Function(SearchRepositoriesStateError value)? error,
    TResult? Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult? Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
  }) {
    return loadingNewItemsFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepositoriesStateIdle value)? idle,
    TResult Function(SearchRepositoriesStateLoading value)? loading,
    TResult Function(SearchRepositoriesStateLoaded value)? loaded,
    TResult Function(SearchRepositoriesStateError value)? error,
    TResult Function(SearchRepositoriesStateLoadingNewItems value)?
        loadingNewItems,
    TResult Function(SearchRepositoriesStateLoadingNewItemsFinished value)?
        loadingNewItemsFinished,
    required TResult orElse(),
  }) {
    if (loadingNewItemsFinished != null) {
      return loadingNewItemsFinished(this);
    }
    return orElse();
  }
}

abstract class SearchRepositoriesStateLoadingNewItemsFinished
    implements SearchRepositoriesState, StateListener {
  const factory SearchRepositoriesStateLoadingNewItemsFinished() =
      _$SearchRepositoriesStateLoadingNewItemsFinishedImpl;
}
