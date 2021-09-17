import 'dart:math' as math;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 16.0),
              itemBuilder: (context, index) {
                return Container(
                color: Colors.blueGrey,
                height: 200,
                alignment: Alignment.center,
                );
              },
              itemCount: 10,
            ),
          ),
      ),
    );
  }
}