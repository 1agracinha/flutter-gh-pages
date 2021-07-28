import 'package:flutter/material.dart';

class DashWidget extends StatelessWidget {
  const DashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Image.asset(
        "assets/dash.gif",
        scale: 3,
      ),
    );
  }
}
