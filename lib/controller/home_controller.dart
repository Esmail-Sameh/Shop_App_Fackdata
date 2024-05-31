import 'package:get/get.dart';
import '../../data.dart';
import '../model/home_model.dart';

class HomeController extends GetxController{

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }
  List<ProductData>? dataList= [];
  void getHomeData(){
    var data = fakeData.map((elemant)=>ProductData.fromJson(elemant),).toList();
    dataList = data;
  }

  List<ProductData> inCardProduct = [];
  void setFavoriteMeals(int id) {
    final existingIndex = inCardProduct.indexWhere((elemant) => elemant.id == id);
    if (existingIndex >= 0) {
      inCardProduct.removeAt(existingIndex);
      print('remove');
    } else {
      inCardProduct.add(fakeData.firstWhere((element) => element['id'] == id) as ProductData);
      print('add');
    }

  }

  bool isCard(int id) {
    if (fakeData.any((elemant) => elemant == id)) {
      return true;
    }
    return false;
  }

}