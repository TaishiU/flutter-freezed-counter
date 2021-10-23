import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_counter/counter_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countState = useProvider(counterProvider);
    // final CounterState? data =
    //     useProvider(counterProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              countState.count.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    context.read(counterProvider.notifier).decrement();
                  },
                ),
                const SizedBox(width: 30),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    context.read(counterProvider.notifier).increment();
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () {
                context.read(counterProvider.notifier).reset();
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     context.read(counterProvider.notifier).increment();
      //   },
      // ),
    );
  }
}
