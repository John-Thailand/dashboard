import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Creates box constraints that expand to fill another box constraints.
      //// If width or height is given, the constraints will require exactly the given value in the given dimension.
      constraints: const BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}
