import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'weight_state.freezed.dart';

@freezed
abstract class WeightState with _$WeightState {
  const factory WeightState({
    @Default(0) int count,
    String? weight,
    String? comment,
    @Default([]) List<Map<String, dynamic>> record,
  }) = _WeightState;
}

class WeightController extends StateNotifier<WeightState> {
  WeightController() : super(const WeightState());

  @override
  void dispose() {
    super.dispose();
  }

  void increment() => state = state.copyWith(
        count: state.count + 1,
      );

  void saveWeight(String value) {
    state = state.copyWith(weight: value);
  }

  void saveComment(String value) {
    state = state.copyWith(comment: value);
  }

  void register() {
    final id = state.record.length + 1;
    final dateTime = DateTime.now();
    final day = '${dateTime.year}年${dateTime.month}月${dateTime.day}日';
    final formRecord = {
      'id': id,
      'weight': state.weight,
      'comment': state.comment,
      'day': day,
    };
    /* record配列を新規作成 */
    final newRecord = List<Map<String, dynamic>>.from(state.record);
    newRecord.add(formRecord);
    state = state.copyWith(record: newRecord);
    print('record: ${state.record}');
  }
}

final weightProvider = StateNotifierProvider<WeightController, WeightState>(
  (ref) => WeightController(),
);
