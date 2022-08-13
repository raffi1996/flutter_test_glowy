import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../extensions/extensions.dart';
import '../../store/auth/auth_state.dart';
import '../../store/store.dart';
import '../../themes/app_colors.dart';
import '../../utils/assets.dart';
import '../../widgets/label_widget.dart';
import '../../widgets/task_item.dart';
import 'widgets/app_bar_content.dart';
import 'widgets/habits_widget.dart';
import 'widgets/rewards_widget.dart';
import 'widgets/user_details.dart';
import 'widgets/welcome_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final authState = locator<AuthState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 24,
                backgroundColor: Colors.transparent,
                expandedHeight: MediaQuery.of(context).size.height * 0.3,
                stretch: true,
                pinned: true,
                flexibleSpace: AppBarContent(
                  userName: authState.currentUser!.firstName!,
                ),
              ),
              SliverToBoxAdapter(
                child: UserDetails(
                  user: authState.currentUser!,
                ),
              ),
              SliverToBoxAdapter(
                child: RewardsWidget(
                  rewards: authState.currentUser!.rewards,
                ),
              ),
              const SliverToBoxAdapter(
                child: WelcomeWidget(),
              ),
              SliverToBoxAdapter(
                child: HabitsWidget(
                  onTap: showOverlay,
                  habits: authState.currentUser!.habits,
                ),
              ),
              SliverToBoxAdapter(
                child: LabelWidget(
                  labelName: 'homePage.task'.tr(),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return TaskItem(
                      task: authState.currentUser!.tasks[index],
                    );
                  },
                  childCount: authState.currentUser!.tasks.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  OverlaySupportEntry showOverlay() {
    return showOverlayNotification(
      (context) => Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(bottom: 100),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          width: 198,
          height: 33,
          decoration: BoxDecoration(
            color: AppColors.progressColorRed,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                'homePage.cool'.tr(),
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                '+45',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Assets.coin.svg(),
              const SizedBox(
                width: 6,
              ),
              Text(
                '+45',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Assets.star.svg(),
            ],
          ),
        ),
      ),
      key: const ValueKey('over'),
      duration: const Duration(seconds: 2),
      position: NotificationPosition.bottom,
    );
  }
}
