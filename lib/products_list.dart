import 'package:groceriesapp/data/data_category.dart';
import 'package:flutter/material.dart';

class ProductsListScreen extends StatefulWidget {
  final Map product;
  const ProductsListScreen({super.key, required this.product});

  @override
  State<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.product['name'],
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff53B175)),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, int index) {
        return ListTile(
          leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(dataCategory[index]['product_name'])),
        );
      }),
    );
  }
}
