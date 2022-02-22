import 'dart:convert';
import 'package:conclase/app/screens/api_page/models/user.dart';
import 'package:http/http.dart' as http;

mixin APIPageMixin {
  final Uri _url = Uri.parse(
    'https://conclase-server.herokuapp.com/api/create/user', //http://worldtimeapi.org/api/timezone
  );

  final Map<String, String> _body = {
    "firstName": "Ify",
    "lastName": "Blossom",
    "email": "Philip@conlase.com",
  };

  Future<User> createUser() async {
    http.Response response = await http.post(_url, body: _body);
    if (response.statusCode != 200) throw response.body;
    return User.fromJSON(json.decode(response.body));
  }
}
