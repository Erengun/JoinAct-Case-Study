import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../admin_page.dart';
import '../widgets/header.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.header,
    required this.onPressed,
  });
  final String header;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Header(text: header),
        IconButton(
          onPressed: () => onPressed(),
          icon: const Icon(Ionicons.add_outline),
        ),
      ],
    );
  }
}
