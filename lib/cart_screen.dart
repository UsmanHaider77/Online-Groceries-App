import 'package:groceriesapp/data/add_to_cart_data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late int dataCounter;
  late int productPrice;
  @override
  void initState() {
    productPrice = 0;
    dataCounter = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff53B175),
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(
              color: Color(0xff53B175),
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: addToCartData.isEmpty
            ? const Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 62,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/474x/92/8b/b3/928bb331a32654ba76a4fc84386f3851.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "No data found",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ))
            : ListView.builder(
                itemCount: addToCartData.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: Color(0xff53B175),
                                child: CircleAvatar(
                                  radius: 42,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                      addToCartData[index]['product_link'],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  addToCartData[index]['product_name'],
                                  style: const TextStyle(
                                    color: Color(0xff53B175),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  addToCartData[index]['weight'].toString(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (dataCounter > 1) {
                                                  dataCounter--;
                                                  productPrice =
                                                      addToCartData[index]
                                                              ['total_price'] *
                                                          dataCounter;
                                                }
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.minimize,
                                              color: Color(0xff53B175),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          child: Container(
                                            color: Color(0xff53B175),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                              child: Text(
                                                dataCounter.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              dataCounter++;
                                              productPrice =
                                                  addToCartData[index]
                                                          ['total_price'] *
                                                      dataCounter;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: Color(0xff53B175),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text(
                                              "Warning",
                                              style: TextStyle(
                                                color: Color(0xff53B175),
                                              ),
                                            ),
                                            content: Text(
                                              "Do you want to remove ${addToCartData[index]['product_name']} from your Cart item list",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade800,
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addToCartData
                                                        .removeAt(index);
                                                    Navigator.of(context).pop();
                                                  });
                                                },
                                                child: Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade800,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  ),
                                  iconSize: 15,
                                ),
                                Text(
                                  "Rs.${productPrice.toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          height: 1,
                        )
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
