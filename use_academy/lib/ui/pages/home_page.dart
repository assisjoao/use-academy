import 'dart:math' as math;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            child: IgnorePointer(
              child: ElevatedButton(
                onPressed: () => debugPrint('apertou'),
                child: const Text('Button'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}