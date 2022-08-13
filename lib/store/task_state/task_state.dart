import 'package:mobx/mobx.dart';

import '../../constants/task_state.dart';

part 'task_state.g.dart';

class TaskState = _TaskState with _$TaskState;

abstract class _TaskState with Store {
  @observable
  TaskCurrentState state = TaskCurrentState.UNCHECKED;

  @action
  void tapOnCheckBox() {
    if (state == TaskCurrentState.UNCHECKED) {
      state = TaskCurrentState.CHECKED;
    } else if (state == TaskCurrentState.CHECKED) {
      state = TaskCurrentState.UNCHECKED;
    }
  }

  @action
  void tapOnDelete({required bool delete}) {}

  @action
  void tapOnNotDone() {
    if (state != TaskCurrentState.NOTDONE) {
      state = TaskCurrentState.NOTDONE;
    } else {
      state = TaskCurrentState.UNCHECKED;
    }
  }
}
