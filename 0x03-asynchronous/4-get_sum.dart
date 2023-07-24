import './4-util.dart';
import 'dart:async';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String userDataJson = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(userDataJson);
    String userId = userData['id'];

    String userOrdersJson = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(userOrdersJson);

    num totalPrice = 0;
    for (var product in userOrders) {
      String productName = product.toString();
      String productPriceJson = await fetchProductPrice(productName);
      num productPrice = jsonDecode(productPriceJson);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }
}
