import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/modules/cart_item.dart';
import 'package:food_delivery/modules/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Burgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha burger",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/aloha_burga.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Vege Burger",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    // salads
    Food(
      name: "Asia See Sain Salad",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/salads/asiansesain_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/salads/caesar_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Terkye", price: 2.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "South West Salad",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/salads/southwest_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    //sides
    Food(
      name: "Garlidbread Sides",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/sides/garlidbread_sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Loadedfri Sides",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/sides/loadedfri_sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Mac Sides",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/sides/mac_sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Onion Ring Sides",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/sides/onionring_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Sweet Potato Sides",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/sides/sweetpotato_sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    //desserts
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    //drinks
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburgers",
      description:
          "A jucy beef patty with melt cheddar, lettue, tomtato, and a hit of onoion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Extra cheese", price: 2.99),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//get total number of item in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    //format the date to include up to second only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("____________");

    for (final CartItem in cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if(CartItem.selectedAddons.isNotEmpty){
        receipt.writeln(" Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
      
    }
    receipt.writeln("___________");
    receipt.writeln();
    receipt.writeln("Total items: ${getTotalItemCount()}");
    receipt.writeln("Total prices: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();    
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //Format List of addons into a string summary
  String _formatAddons(List<Addon> addon) {
    return addon
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
