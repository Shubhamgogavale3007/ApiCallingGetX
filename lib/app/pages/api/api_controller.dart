import 'package:api_calling_getx/apiprovider/apiprovider.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import '../../../model/model.dart';
import 'dart:convert';

class ApiPageController extends GetxController{
  RxString name = ''.obs;
  List<ApiModel> mApiModel = [];
  RxList<Products> products= RxList.empty();
  @override
  void onInit() {
    super.onInit();
   /* initData();*/
    getMethod('https://dummyjson.com/products');
  }
  void initData() async {
    var response =
    await ApiProvider().getMethod('https://dummyjson.com/products');
    mApiModel = List<ApiModel>.from(
        jsonDecode(response).map((model) => ApiModel.fromJson(model)));

  }


  Future getMethod(String apiUrl) async {
    var url = Uri.parse(apiUrl);
    var response = await http.get(url);
    print('Response Status : ${response.statusCode}');
    ApiModel x = ApiModel.fromJson(json.decode(response.body));
    print(x.total);
    products.value = x.products!;
    print(products.value.length);


  }
}


