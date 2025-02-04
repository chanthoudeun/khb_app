import 'package:flutter/material.dart';

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FConfig.appFlavor = Flavor.prd;
  await runner.main();
}
