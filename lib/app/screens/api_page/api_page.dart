import 'package:conclase/app/screens/api_page/mixins/api_page_mixin.dart';
import 'package:flutter/material.dart';

class APIPage extends StatefulWidget {
  const APIPage({Key? key}) : super(key: key);

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> with APIPageMixin {
  @override
  void initState() {
    super.initState();
    getTimeZone().then((body) => updateZone(body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('APIs'),
        ),
        body: zones == null
            ? Center(child: Text('Loading...'))
            : ListView(
                children: zones
                    .map<Widget>(
                      (e) => Card(
                        child: ListTile(
                          title: Text(e),
                        ),
                      ),
                    )
                    .toList(),
              )
        // body: FutureBuilder<List<String>>(
        //   future: zones,
        //   initialData: ['initial'],
        //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done)
        //       return ListView(
        //         children: snapshot.data!.map((e) => Text('$e')).toList(),
        //       );
        //     else if (snapshot.hasError) {
        //       return Center(
        //         child: Text('An error occurred ${snapshot.error}'),
        //       );
        //     } else if (snapshot.connectionState == ConnectionState.waiting)
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     return Center(
        //       child: Text('Nothing is happening'),
        //     );
        //   },
        // ),

        );
  }
}
