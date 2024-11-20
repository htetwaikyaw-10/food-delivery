import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
//import 'package:food_delivery/main.dart';
import 'package:food_delivery/modules/food.dart';
import 'package:food_delivery/modules/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  //method to add to cart
  void addToCart(Food food, Map<Addon, bool>selectedAddons){
    //close the current food page to go back to menu
    Navigator.pop(context);

    //format the selected add on
    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }

    //add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          //appBar: AppBar(),
          // backgroundColor: Theme.of(context).colorScheme.secondary,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.food.description,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            //getindividual addon
                            Addon addon = widget.food.availableAddons[index];

                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                //button -> add to cart
                MyButton(
                  text: "Add to cart",
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                ),

                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
