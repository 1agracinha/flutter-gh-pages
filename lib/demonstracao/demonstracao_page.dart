import 'package:flutter/material.dart';
import 'package:flutter_gh_pages/demonstracao/components/dash_widget.dart';

class DemonstracaoPage extends StatefulWidget {
  const DemonstracaoPage({Key? key}) : super(key: key);

  @override
  _DemonstracaoPageState createState() => _DemonstracaoPageState();
}

class _DemonstracaoPageState extends State<DemonstracaoPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: -1, end: 1).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.blue.shade100,
            Colors.blue.shade200,
            Colors.pink.shade100,
            Colors.orange.shade50,
          ],
        ),
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/nuvem.png",
            scale: 1,
          ),
          AnimatedAlign(
            alignment: Alignment(animation.value + 1, 0),
            duration: Duration(milliseconds: 240),
            child: Image.asset(
              "assets/nuvem.png",
              scale: 1,
            ),
          ),
          AnimatedAlign(
            alignment: Alignment(animation.value - 1, -0.5),
            duration: Duration(milliseconds: 200),
            child: Image.asset(
              "assets/nuvem.png",
              scale: 2,
            ),
          ),
          AnimatedAlign(
            alignment: Alignment(animation.value + 2, 1),
            duration: Duration(milliseconds: 100),
            child: Image.asset(
              "assets/nuvem.png",
              scale: 2,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: DashWidget(),
          ),
          AnimatedAlign(
            alignment: Alignment(animation.value - 0.8, 0.5),
            duration: Duration(milliseconds: 400),
            child: Image.asset(
              "assets/nuvem.png",
              scale: 1,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/nuvem.png",
              scale: 1,
            ),
          ),
        ],
      ),
    );
  }
}
