import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'bottom_tab_state.freezed.dart';

@freezed
abstract class BottomTabState with _$BottomTabState {
  const factory BottomTabState({
    @Default(0) int index,
  }) = _BottomTabState;
}

class BottomTabController extends StateNotifier<BottomTabState> {
  BottomTabController() : super(const BottomTabState());
  void update(index) => state = state.copyWith(
        index: index,
      );
}

final bottomTabProvider =
    StateNotifierProvider<BottomTabController, BottomTabState>(
  (ref) => BottomTabController(),
);
