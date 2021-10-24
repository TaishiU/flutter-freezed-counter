import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_counter/StateManagement/weight_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopUpContainer extends HookWidget {
  const PopUpContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();

    return Form(
      key: _formkey,
      child: SimpleDialog(
        title: const Text('今日の体重を入力しよう'),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 24,
        ),
        children: [
          Row(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.only(left: 4),
                child: TextFormField(
                  // validator: (String? input) {
                  //   if (input!.isEmpty) {
                  //     return '体重を入力してください';
                  //   }
                  //   return null;
                  // }),
                  onChanged: (String value) {
                    context.read(weightProvider.notifier).saveWeight(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '今日の体重',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Kg'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.only(left: 4),
            child: TextFormField(
              onChanged: (String value) {
                context.read(weightProvider.notifier).saveComment(value);
              },
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '一言',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                '登録',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            onTap: () {
              context.read(weightProvider.notifier).register();
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
