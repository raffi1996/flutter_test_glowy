

import 'package:flavorbanner/flavorbanner.dart';

import 'main.dart' as app;

Future<void> main() async {
  await app.run(env: Flavor.TEST);
}
