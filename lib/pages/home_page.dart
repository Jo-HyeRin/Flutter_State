import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state/pages/counter_provider.dart';
import 'package:flutter_state/pages/product_repository.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    final product = ref.watch(productProvider);

    return Scaffold(
      body: Column(
        children: [
          Text(
            "${count}",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
          ),
          Text(
            "${product.name}",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
          ),
          ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).increment();
              },
              child: Text(
                "클릭",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}