import 'package:flutter/material.dart';

class Div extends StatelessWidget {

  List<Widget> children;
  int flex;

  Div({
    Key? key,
    required this.children,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        )
    );
  }
}
