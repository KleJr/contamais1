import 'package:asp/asp.dart';
import 'package:contamais1/src/atom/state/atom_states.dart';
import 'package:flutter/material.dart';

class AtomPage extends StatefulWidget {
  const AtomPage({super.key});

  @override
  State<AtomPage> createState() => _AtomPageState();
}

class _AtomPageState extends State<AtomPage> {
  @override
  Widget build(BuildContext context) {
    final counter = context.select(() => counterState.value);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Atom'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Center(
              child: Text(
                ' ($counter) ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementAction,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
