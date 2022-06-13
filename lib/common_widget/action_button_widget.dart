import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget(
      {Key? key, required this.onPressed, required this.icon,required this.clr})
      : super(key: key);
  final VoidCallback onPressed;
  final Icon icon;
  final clr;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      child: CircleAvatar(
        backgroundColor: clr,
        radius: 30,

        child: Center(
          child: IconButton(onPressed: onPressed, icon: icon),
        ),
      ),
    );
  }
}
