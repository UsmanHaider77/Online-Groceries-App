// import 'package:groceriesapp/data/bakery/bakery_data.dart';
// import 'package:groceriesapp/data/dairy/dairy_products.dart';
// import 'package:groceriesapp/data/data_category.dart';
// import 'package:groceriesapp/data/fresh_produce/fruit_data.dart';
// import 'package:groceriesapp/data/fresh_produce/herbs_data.dart';
// import 'package:groceriesapp/data/fresh_produce/vegetable_data.dart';
// import 'package:groceriesapp/data/meat/meat_seafood_data.dart';
import 'package:groceriesapp/data/pantry_staples/pantry_staple_data.dart';
import 'package:groceriesapp/single_product_screen.dart';
import 'package:flutter/material.dart';

class PantryStapleScreen extends StatelessWidget {
  const PantryStapleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff53B175),
        centerTitle: true,
        title: const Text(
          "Pantry & Staple",
          style: TextStyle(
              color: Color(0xff53B175),
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: (pantryStaplesData.length / 2).ceil(),
          itemBuilder: (context, index) {
            int firstIndex = index * 2;
            int secondIndex = index * 2 + 1;

            bool hasSecondItem = secondIndex < pantryStaplesData.length;

            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProductScreen(
                                    data: pantryStaplesData[firstIndex])));
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xff53B175), width: 0.4),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        // First card
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff53B175),
                                    radius: 43,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 42,
                                      child: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            pantryStaplesData[firstIndex]
                                                ['product_link']),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // Add your card content here
                              Text(
                                pantryStaplesData[firstIndex]['product_name'],
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff53B175),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                pantryStaplesData[firstIndex]['weight'],
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rs.${pantryStaplesData[firstIndex]['price']}"
                                        .toString(),
                                    style: const TextStyle(
                                        color: Color(0xff53B175),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const InkWell(
                                    child: Card(
                                      color: Color(0xff53B175),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                              // Add other widgets for the first item in the row
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8), // Add spacing between cards
                  // Build the second card if it has data
                  if (hasSecondItem)
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingleProductScreen(
                                      data: pantryStaplesData[secondIndex])));
                        },
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xff53B175), width: 0.4),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // Second card
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff53B175),
                                      radius: 43,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 42,
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: NetworkImage(
                                              pantryStaplesData[secondIndex]
                                                  ['product_link']),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                // Add your card content here
                                Text(
                                  pantryStaplesData[secondIndex]
                                      ['product_name'],
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff53B175),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  pantryStaplesData[secondIndex]['weight'],
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rs.${pantryStaplesData[secondIndex]['price']}"
                                          .toString(),
                                      style: const TextStyle(
                                          color: Color(0xff53B175),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const InkWell(
                                      child: Card(
                                        color: Color(0xff53B175),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                                // Add other widgets for the second item in the row
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
