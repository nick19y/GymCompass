import 'package:flutter/material.dart';
import 'package:gymcompass/components/sections/Header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Header(),
    );
  }
}
