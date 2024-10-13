import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String userOrders = await fetchUserOrders(userId);
    List<dynamic> ordersList = jsonDecode(userOrders);

    double sum = 0.0;

    for (String product in ordersList) {
      String priceData = await fetchProductPrice(product);

      //double productPrice = jsonDecode(priceData);
      double productPrice = double.tryParse(jsonDecode(priceData).toString()) ?? -1;
      //if (productPrice == -1) {
      //  throw Exception('Failed to parse product price');
      //}
      sum += productPrice;
    }
    return sum;
  } catch(error) {
    return -1;
  }
}