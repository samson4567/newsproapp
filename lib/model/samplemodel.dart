import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class SampleModel extends StatelessWidget {
  const SampleModel({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/claro.jpg',
                     height: getScreenHeight(250, child: Column()),
                    width: getScreenWidth(250),
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'AFRICAN STUDENT: school fees delayed',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
