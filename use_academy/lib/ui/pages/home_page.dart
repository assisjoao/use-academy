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
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    height: 100,
                    width: 300,
                    left: 0,
                    top: 0,
                    child: Container(color: Colors.red),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 400,
                      minWidth: 300,
                    ),
                    child: Container(color: Colors.amber,),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
}