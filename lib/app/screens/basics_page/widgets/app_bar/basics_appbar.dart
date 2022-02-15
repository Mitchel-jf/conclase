import 'package:conclase/app/screens/basics_page/widgets/app_bar/actions/more_items_button.dart';
import 'package:flutter/material.dart';

import 'back_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size(50, 47);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).canvasColor,
      leading: BasicsAppBarBackButton(),
      actions: [MoreItems()],
    );
  }
}
