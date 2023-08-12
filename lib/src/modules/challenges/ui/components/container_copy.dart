import 'package:flutter/material.dart';

class ContainerCopy extends StatelessWidget {
  final void Function()? onPressed;
  final String content;
  const ContainerCopy({
    Key? key,
    this.onPressed,
    this.content = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text(content), IconButton(onPressed: onPressed, icon: const Icon(Icons.copy, color: Colors.blue))],
      ),
    );
  }
}
