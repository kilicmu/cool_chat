import 'package:flutter/material.dart';

class AvatarIcon extends StatefulWidget {
  const AvatarIcon({Key? key, this.src = "", this.onTap}) : super(key: key);
  final String src;
  final void Function()? onTap;

  @override
  State<AvatarIcon> createState() => _AvatarIconState();
}

class _AvatarIconState extends State<AvatarIcon> {
  @override
  Widget build(BuildContext context) {
    final src = widget.src;
    return GestureDetector(
        onTap: widget.onTap,
        child: CircleAvatar(
          radius: 16.0,
          backgroundImage: NetworkImage(src),
        ));
  }
}
