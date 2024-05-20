import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_recall/providers/cart_provider.dart';
import '../consts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Cart",
      ),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(builder: (context, cartProvider, _) {
      return Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: ListView.builder(
              itemCount: cartProvider.items.length,
              itemBuilder: (context, index) {
                Product product = cartProvider.items[index];
                return ListTile(
                  leading: Container(
                    height: 25,
                    width: 25,
                    color: product.color,
                  ),
                  title: Text(
                    product.name,
                  ),
                );
              },
            ),
          )
        ],
      );
    });
  }
}
