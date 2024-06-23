import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AScreen extends StatelessWidget {
  const AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('A'),
          TextButton(
            onPressed: () {
              context.pushNamed('aa');
            },
            child: const Text('aa 화면으로 이동'),
          ),
        ],
      )),
    );
  }
}
