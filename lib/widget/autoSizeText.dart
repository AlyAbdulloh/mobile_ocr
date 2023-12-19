import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AutoSize extends StatelessWidget {
  final String text;
  const AutoSize({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(fontSize: 15),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
