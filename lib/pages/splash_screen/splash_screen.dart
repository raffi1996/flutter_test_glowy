import 'package:flutter/material.dart';

import '../../mixins/after_layout_mixin.dart';
import '../../providers/screen_service.dart';
import '../../router.dart';
import '../../store/auth/auth_state.dart';
import '../../store/store.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with AfterLayoutMixin {
  final authState = locator<AuthState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Future afterFirstLayout(BuildContext context) async {
    await checkSession();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }

  Future<void> checkSession() async {
    await authState.getCurrentUser();

    await router.pushAndPopAll(
      const HomeRoute(),
    );

    ///todo checkSession when implement registration flow
    // final _token = await StorageUtils.getAccessToken();
    // if (_token != null) {
    //   await router.popAndPush(const LoginRoute());
    // } else {
    //   await router.popAndPush(const DashboardRoute());
    // }
  }
}
