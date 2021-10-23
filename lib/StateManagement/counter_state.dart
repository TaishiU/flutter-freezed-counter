import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
  }) = _CounterState;
}

class CounterController extends StateNotifier<CounterState> {
  CounterController() : super(const CounterState());

  void increment() => state = state.copyWith(
        count: state.count + 1,
      );
  void decrement() => state = state.copyWith(
        count: state.count - 1,
      );
  void reset() => state = state.copyWith(
        count: 0,
      );
}

final counterProvider = StateNotifierProvider<CounterController, CounterState>(
  (ref) => CounterController(),
);
