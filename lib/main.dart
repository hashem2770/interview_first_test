import 'package:flutter/material.dart';

import 'core/utils/setvice_locator.dart';
import 'features/views/data_displayer.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter InterView Test',
      home: DataDisplayer(),
    );
  }
}
