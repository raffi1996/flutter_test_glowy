// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskState on _TaskState, Store {
  late final _$stateAtom = Atom(name: '_TaskState.state', context: context);

  @override
  TaskCurrentState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(TaskCurrentState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_TaskStateActionController =
      ActionController(name: '_TaskState', context: context);

  @override
  void tapOnCheckBox() {
    final _$actionInfo = _$_TaskStateActionController.startAction(
        name: '_TaskState.tapOnCheckBox');
    try {
      return super.tapOnCheckBox();
    } finally {
      _$_TaskStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tapOnDelete({required bool delete}) {
    final _$actionInfo = _$_TaskStateActionController.startAction(
        name: '_TaskState.tapOnDelete');
    try {
      return super.tapOnDelete(delete: delete);
    } finally {
      _$_TaskStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tapOnNotDone() {
    final _$actionInfo = _$_TaskStateActionController.startAction(
        name: '_TaskState.tapOnNotDone');
    try {
      return super.tapOnNotDone();
    } finally {
      _$_TaskStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
