import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class SampleModel extends StatelessWidget {
  final String imagepath;
  final String headings;
  const SampleModel(
      {required this.imagepath, required this.headings, super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    imagepath,
                    height: getScreenHeight(270),
                    width: getScreenWidth(600),
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Center(
                    child: Text(
                      headings,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
