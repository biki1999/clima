import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    Uri uri = Uri.parse(url); // Correctly parsing the URL
    Response response = await http.get(uri);
    print('***********Url=$url');
    print('*********Response=$response');
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
