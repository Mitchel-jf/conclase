import 'package:conclase/app/screens/builder_page/models/list_item_model.dart';
import 'package:flutter/material.dart';

class ListItemCard extends StatelessWidget {
  const ListItemCard({required this.listItem, Key? key}) : super(key: key);

  final ListItemModel listItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(listItem.iconData)),
        title: Text(listItem.title),
        subtitle: Text(listItem.subtitle),
        onTap: listItem.onTap ?? () {},
      ),
    );
  }
}
