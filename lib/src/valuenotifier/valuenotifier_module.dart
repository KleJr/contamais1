import 'package:flutter_modular/flutter_modular.dart';

import 'page/valuenotifier_page.dart';

class ValueNotifierModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => const ValueNotifierPage());
  }
}
