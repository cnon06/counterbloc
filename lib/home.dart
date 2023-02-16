import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counterbloc.dart';

import 'counterevent.dart';
import 'counterstate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('build is triggered.');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, count) => Center(
                  child: Text(
                '${count.counter}',
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncreaseCounterEvent());
                },
                child: const Text('Increase')),
            ElevatedButton(
                onPressed: () {
                   context.read<CounterBloc>().add(DecreaseCounterEvent());
                },
                child: const Text('Decrease')),
          ],
        ),
      ),
    );
  }
}
