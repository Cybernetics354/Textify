import 'dart:async';

import 'package:rxdart/rxdart.dart';

abstract class BasicBloc<T> {
  T state;
  
  /// Stream Controller for [value]
  final BehaviorSubject<T> valueController = new BehaviorSubject<T>();
  /// Stream pipe for [valueController]
  Stream<T> get valueStream => valueController.stream;
  /// Stream sink for [valueController]
  StreamSink<T> get valueIn => valueController.sink;
  
  void dispose() {
    valueController?.close();
  }

  void emit(T inState) {
    state = inState;
    valueIn.add(state);
  }
}