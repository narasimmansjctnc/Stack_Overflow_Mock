import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Controller extends GetxController{
  var data ;


  Future getData(searchData) async {
    try{
      final api = "https://api.stackexchange.com/2.3/search?tagged=$searchData&site=stackoverflow";
      var response = await http.get(Uri.parse(api));
      data = json.decode(response.body);
      print(data);
    } catch(e) {
      print(e);
    }
    update();
  }
}
