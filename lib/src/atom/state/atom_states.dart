import 'package:asp/asp.dart';

//state
final counterState = Atom<int>(0);

//action
final incrementAction = Atom.action(key: 'increment');
