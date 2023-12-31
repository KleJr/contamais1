import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../atom/state/atom_states.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Conta SetState'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counter = context.select(() => counterState.value);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: NavigationDrawer(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Bem Vindo",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          NavigationDrawerDestination(
              icon: const Icon(Icons.flash_auto),
              label: TextButton(
                child: const Text('Value Notifier'),
                onPressed: () {
                  Navigator.of(context).pop();
                  //Modular.to.pop();
                  Modular.to.pushNamed('/valueNotifier/');
                },
              )),
          NavigationDrawerDestination(
              icon: const Icon(Icons.flash_auto),
              label: TextButton(
                child: const Text('Atom'),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Modular.to.pop();
                  Modular.to.pushNamed('/atom/');
                },
              )),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text('$counter atom'),
            RxBuilder(builder: (_) {
              return Text('${counterState.value} Rx');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
