import 'package:food_delivery/modules/food.dart';

class CartItem {
  final food;
  //bool price;
  List<Addon> selectedAddons;
  int quantity;

  CartItem(
      {required this.food,
      //required this.price,
      required this.selectedAddons,
      this.quantity = 1});

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0, (sum, addon)=> sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
