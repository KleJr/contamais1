import 'package:asp/asp.dart';

import '../state/atom_states.dart';

class AtomReducer extends Reducer {
  AtomReducer() {
    on(() => [incrementAction.value], _increment);
  }
  void _increment() {
    counterState.value++;
  }
}
