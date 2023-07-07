import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends GetConnect{
/*  Future getUser() async{
String apiUrl = 'https://dummyjson.com/products';
    var url = Uri.parse(apiUrl);
    var response = await http.get(url);
    print('Response Status : ${response.statusCode}');

    return response.body;

  }*/

  Future getMethod(String apiUrl) async {
    var url = Uri.parse(apiUrl);
    var response = await http.get(url);
    print('Response Status : ${response.statusCode}');

    return response.body;
  }
}