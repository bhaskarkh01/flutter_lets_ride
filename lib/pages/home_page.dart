import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pageTitle(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#LetsGo",
      style: TextStyle(
        fontSize: 50,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _autoImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 238, 213, 121),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/auto.png"),
        ),
      ),
    );
  }
}
