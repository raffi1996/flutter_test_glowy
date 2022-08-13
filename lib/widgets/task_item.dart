import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/task_state.dart';
import '../extensions/extensions.dart';
import '../models/today_task_model/today_task_model.dart';
import '../providers/screen_service.dart';
import '../store/task_state/task_state.dart';
import '../themes/app_colors.dart';
import '../utils/assets.dart';

class TaskItem extends StatefulWidget {
  final TodayTaskModel task;

  const TaskItem({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  final _taskState = TaskState();

  bool get checked => _taskState.state == TaskCurrentState.CHECKED;

  bool get notDone => _taskState.state == TaskCurrentState.NOTDONE;

  bool get disabled => _taskState.state != TaskCurrentState.UNCHECKED;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Slidable(
        enabled: !disabled,
        endActionPane: !widget.task.expired
            ? ActionPane(
                motion: const ScrollMotion(),
                dragDismissible: false,
                closeThreshold: .9,
                openThreshold: .1,
                extentRatio: .43,
                children: [
                  GestureDetector(
                    onTap: _taskState.tapOnNotDone,
                    child: Container(
                      padding: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                        color: AppColors.mediumLightShadeOrange,
                      ),
                      width: 66,
                      height: 54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.bad.svg(),
                          Text(
                            'homePage.notDone'.tr(),
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final result = await alertDialog(context);
                      _taskState.tapOnDelete(delete: result);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.progressColorRed,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      width: 94,
                      height: 54,
                      child: Row(
                        children: [
                          Container(
                            height: 54,
                            width: 14,
                            decoration: const BoxDecoration(
                              color: AppColors.mediumLightShadeOrange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.delete.svg(),
                                Text(
                                  'homePage.delete'.tr(),
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : null,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: context.width,
              height: 54,
              decoration: BoxDecoration(
                color: AppColors.darkShadeOfBlueMagenta,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: AppColors.darkGray,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: widget.task.iconPath.svg(),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Placeholder',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                          Observer(
                            builder: (_) => Row(
                              children: [
                                if (checked)
                                  Row(
                                    children: [
                                      Assets.willDone.svg(),
                                      const SizedBox(
                                        width: 4,
                                      )
                                    ],
                                  ),
                                if (notDone)
                                  Row(
                                    children: [
                                      Assets.xIcon.svg(),
                                      const SizedBox(
                                        width: 4,
                                      )
                                    ],
                                  ),
                                if (widget.task.expired)
                                  Row(
                                    children: [
                                      Assets.timeExpire.svg(),
                                      const SizedBox(
                                        width: 4,
                                      )
                                    ],
                                  ),
                                Text(
                                  widget.task.expired
                                      ? 'homePage.expired'.tr()
                                      : checked
                                          ? 'homePage.willDone'.tr()
                                          : notDone
                                              ? 'homePage.nextTime'.tr()
                                              : widget.task.name,
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: widget.task.expired
                                        ? AppColors.yellow
                                        : checked
                                            ? AppColors.green
                                            : notDone
                                                ? AppColors.red
                                                : AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  if (!widget.task.expired)
                    Observer(
                      builder: (_) => GestureDetector(
                        onTap: _taskState.tapOnCheckBox,
                        child: checked
                            ? Assets.done.svg()
                            : notDone
                                ? Assets.badSmile.svg()
                                : Assets.checkBox.svg(),
                      ),
                    ),
                ],
              ),
            ),
            Observer(
              builder: (_) => disabled
                  ? Container(
                      height: 54,
                      color: AppColors.charcoal.withOpacity(0.5),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ).paddingOnly(
        left: 16,
        right: 16,
        bottom: 16,
      ),
    );
  }

  Future<bool> alertDialog(BuildContext context) async {
    final result = await showCupertinoDialog<bool>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            'homePage.areYouSure'.tr(),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                router.pop(true);
              },
              child: Text(
                'keywords.yes'.tr(),
              ),
            ),
            CupertinoDialogAction(
              onPressed: () {
                router.pop(false);
              },
              child: Text(
                'keywords.no'.tr(),
              ),
            ),
          ],
        );
      },
    );
    return result!;
  }
}
