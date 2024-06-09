
import 'package:flutter/material.dart';

import '../../../models/interview.dart';

class DataItem extends StatelessWidget {
  const DataItem({
    super.key, required this.index, required this.data,
  });

  final int index;
  final List<Interview> data;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.grey.shade300,
      child: Text(
        data[index].orderNo.toString(),
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
