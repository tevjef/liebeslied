import 'package:flutter_simple_dependency_injection/injector.dart';

import '../data/lib.dart';

class Locator {
  static void init() {
    final injector = Injector.getInjector();

    injector.map<String>((i) => "https://api.coursetrakr.io/v2",
        key: "apiUrl");
    injector.map<AnalyticsLogger>((i) => new AnalyticsLogger(),
        isSingleton: true);

    injector.map<AdInitializer>((i) => new AdInitializer(), isSingleton: true);
  }
}
