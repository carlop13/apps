import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class FavsSlider extends StatelessWidget {
  const FavsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: const [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Populares",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ));
  }
}
