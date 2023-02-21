import 'package:flutter/material.dart';
import '../widgets/buildAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Container(
        child: const Text("Sample Text"),
      ),
    );
  }
}
