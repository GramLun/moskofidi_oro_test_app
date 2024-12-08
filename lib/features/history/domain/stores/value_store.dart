import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A base interface for single value streamable store.
abstract class BaseValueStore<T extends List>
    implements StateStreamableSource<T> {
  /// Updates store state.
  FutureOr<void> put(final T state);
}

/// A in-memory implementation of the [BaseValueStore].
class ValueStore<T extends List> implements BaseValueStore<T>, Sink<T> {
  @protected
  @nonVirtual
  T _state;

  @nonVirtual
  @visibleForTesting
  final StreamController<T> controller;

  ValueStore(
    this._state,
  ) : controller = StreamController.broadcast();

  @override
  T get state {
    return _state;
  }

  @override
  Stream<T> get stream {
    return controller.stream;
  }

  @override
  bool get isClosed {
    return controller.isClosed;
  }

  @override
  FutureOr<void> put(T state) {
    add(state);
  }

  @override
  @protected
  @nonVirtual
  void add(T data) {
    if (isClosed) return;
    if (_state == data) return;

    _state = data;
    controller.add(data);
  }

  @override
  FutureOr<void> close() async {
    return await controller.close();
  }
}
