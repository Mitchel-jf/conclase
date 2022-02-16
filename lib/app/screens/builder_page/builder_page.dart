import 'package:conclase/app/screens/builder_page/mixins/list_item_mixins.dart';
import 'package:conclase/app/screens/builder_page/widgets/list_item_card.dart';
import 'package:flutter/material.dart';

class BuilderPage extends StatelessWidget with ListItemMixin {
  BuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Builders'),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (_, index) => ListItemCard(listItem: listItems[index]),
      ),
    );
  }
}
