import 'package:contamais1/src/atom/atom_module.dart';
import 'package:contamais1/src/setstate/myapp_page.dart';
import 'package:contamais1/src/valuenotifier/valuenotifier_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void binds(Injector i) {}

  @override
  void routes(r) {
    r.child('/setstate', child: (_) => const MyApp());
    r.module('/atom', module: AtomModule());
    r.module('/valueNotifier', module: ValueNotifierModule());
  }
}
