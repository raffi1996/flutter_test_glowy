import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'habit_state.g.dart';

class HabitState = _HabitState with _$HabitState;

abstract class _HabitState with Store {
  final List<String> weekdays = [];
  final List<String> days = [];
  @observable
  ObservableMap<int, bool> checkedDays = ObservableMap.of(
    {1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false},
  );

  void weekDays() {
    final currentDate = DateTime.now();

    for (var i = 1; i <= 7; ++i) {
      final date = getDate(
        currentDate.subtract(Duration(days: currentDate.weekday - i)),
      );
      final weekday = DateFormat('E').format(date);
      final day = date.day;
      days.add(day.toString());
      weekdays.add(weekday.substring(0, weekday.length - 1));
    }
  }

  DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);
}
