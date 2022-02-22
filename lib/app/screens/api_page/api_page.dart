import 'package:conclase/app/screens/api_page/mixins/api_page_mixin.dart';
import 'package:conclase/app/screens/api_page/models/user.dart';
import 'package:flutter/material.dart';

import 'widgets/api_error_widget.dart';
import 'widgets/user_widget.dart';

class APIPage extends StatefulWidget {
  APIPage({Key? key}) : super(key: key);

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> with APIPageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APIs'),
      ),
      body: FutureBuilder<User>(
        future: createUser(),
        builder: (_, snapshot) {
          if (snapshot.hasData) return UserWidget(snapshot.data!);
          if (snapshot.hasError) return APIErrorWidget();
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
