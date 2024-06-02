import 'package:coffe/model/fake_data(coffee).dart';
import 'package:coffe/model/modelData.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  ModelData model = ModelData.fromJson(fakeData);
  List<Data> cartList = [];

  increament(Data value) {
    value.quantity = value.quantity + 1;
    update();
  }

  decreament(Data value) {
    if (value.quantity == 1) {
      cartList.remove(value);
      update();
    } else {
      value.quantity = value.quantity - 1;
      update();
    }
  }

  addToCart(Data value) {
    cartList.contains(value) ? null : cartList.add(value);
    update();
  }
}
