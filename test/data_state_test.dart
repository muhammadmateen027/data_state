import 'package:flutter_test/flutter_test.dart';

import 'package:data_state/data_state.dart';

void main() {
  group('DataState', () {
    test(
        'DataState.none() should have loadingState as LoadingState.none'
        ' and exception as null', () {
      const state = DataState.none();
      expect(state.loadingState, LoadingState.none);
      expect(state.exception, isNull);
    });

    test(
        'DataState.error() should have loadingState as LoadingState.error'
        ' and exception as provided', () {
      final exception = Exception('Test exception');
      final state = DataState.error(exception);
      expect(state.loadingState, LoadingState.error);
      expect(state.exception, exception);
    });

    test(
        'DataState.partial() should have loadingState as LoadingState.partial'
        ' and exception as null', () {
      const state = DataState.partial();
      expect(state.loadingState, LoadingState.partial);
      expect(state.exception, isNull);
    });

    test(
        'DataState.full() should have loadingState as LoadingState.full'
        ' and exception as null', () {
      const state = DataState.full();
      expect(state.loadingState, LoadingState.full);
      expect(state.exception, isNull);
    });

    test(
        'DataState.loading() should have loadingState as '
        'LoadingState.loading and exception as null', () {
      const state = DataState.loading();
      expect(state.loadingState, LoadingState.loading);
      expect(state.exception, isNull);
    });

    test(
        'hasException should return true if loadingState is LoadingState.error',
        () {
      final state = DataState.error(Exception('Test exception'));
      expect(state.hasException, isTrue);
    });

    test(
        'isLoading should return true if loadingState'
        ' is LoadingState.loading', () {
      const state = DataState.loading();
      expect(state.isLoading, isTrue);
    });

    test('isFull should return true if loadingState is LoadingState.full', () {
      const state = DataState.full();
      expect(state.isFull, isTrue);
    });

    test('isNone should return true if loadingState is LoadingState.none', () {
      const state = DataState.none();
      expect(state.isNone, isTrue);
    });

    test('toString should return correct string representation', () {
      final state = DataState.error(Exception('Test exception'));
      expect(state.toString(), contains('loadingState: LoadingState.error'));
      expect(
          state.toString(), contains('exception: Exception: Test exception'));
    });

    test('equality operator should return true for identical objects', () {
      const state1 = DataState.full();
      const state2 = DataState.full();
      expect(state1 == state2, isTrue);
    });

    test('hashCode should be equal for identical objects', () {
      const state1 = DataState.full();
      const state2 = DataState.full();
      expect(state1.hashCode, state2.hashCode);
    });
  });
}
