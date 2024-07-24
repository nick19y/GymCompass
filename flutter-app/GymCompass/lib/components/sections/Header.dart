import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Bem vindo, Nícolas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
