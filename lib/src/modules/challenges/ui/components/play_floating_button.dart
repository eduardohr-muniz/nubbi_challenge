import 'package:flutter/material.dart';

class PlayFloatingButton extends StatelessWidget {
  final void Function() onPressed;
  const PlayFloatingButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: onPressed,
      child: const Icon(Icons.play_arrow, color: Colors.white),
    );
  }
}
