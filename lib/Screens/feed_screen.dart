import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_counter/Screens/home_screen.dart';
import 'package:freezed_counter/Screens/second_screen.dart';
import 'package:freezed_counter/StateManagement/bottom_tab_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FeedScreen extends HookWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomTabState = useProvider(bottomTabProvider);

    return Scaffold(
      body: [
        const HomeScreen(),
        const SecondScreen(),
      ].elementAt(bottomTabState.index),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index) {
          context.read(bottomTabProvider.notifier).update(index);
        },
        activeColor: Colors.blue,
        currentIndex: bottomTabState.index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_outlined),
          ),
        ],
      ),
    );
  }
}
