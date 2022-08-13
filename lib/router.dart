import 'package:auto_route/auto_route.dart';
import 'pages/home_page/home_page.dart';
import 'pages/splash_screen/splash_screen.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(
      page: SplashScreenPage,
      initial: true,
      fullscreenDialog: true,
    ),
    AdaptiveRoute(
      page: HomePage,
      fullscreenDialog: true,
    ),
  ],
)
class $Router {}
