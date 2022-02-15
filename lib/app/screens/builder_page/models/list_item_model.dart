import 'package:flutter/material.dart';

class ListItemModel {
 const ListItemModel({
    required this.iconData,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final IconData iconData;
  final String title, subtitle;
  final void Function()? onTap;
}
