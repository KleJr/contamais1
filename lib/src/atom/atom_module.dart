import 'package:contamais1/src/atom/page/atom_page.dart';
import 'package:contamais1/src/atom/reducer/atom_reducer.dart';
import 'package:contamais1/src/atom/state/atom_states.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AtomModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<AtomReducer>(AtomReducer.new, config: BindConfig(
      onDispose: (value) {
        // counterState.value = (0);
        value.dispose();
      },
    ));
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const AtomPage());
  }
}
