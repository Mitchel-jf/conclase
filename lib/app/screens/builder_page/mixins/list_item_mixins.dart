import 'package:conclase/app/screens/builder_page/models/list_item_model.dart';
import 'package:flutter/material.dart';

mixin ListItemMixin {
 final List<ListItemModel> listItems =
      // List.generate(
      //   1000,
      //   (index) => ListItemModel(
      //     iconData: Icons.person,
      //     title: 'Philip',
      //     subtitle: 'Inegbedion',
      //   ),
      // );
      [
    ListItemModel(
      iconData: Icons.person,
      title: 'Philip',
      subtitle: 'Inegbedion',
    ),
    ListItemModel(
      iconData: Icons.person,
      title: 'Blossom',
      subtitle: 'Ayogu',
    ),
    ListItemModel(
      iconData: Icons.person,
      title: 'Ifeakachukwu',
      subtitle: 'Osakwe',
    ),
  ];
}
