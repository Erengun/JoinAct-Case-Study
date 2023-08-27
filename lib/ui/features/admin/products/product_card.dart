import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../models/admin/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
        },
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  product.imageBase64,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100,
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Center(
                      child: Text('No image Provided'),
                    );
                  },
                ),
                if (product.productVideoLink != null &&
                    product.productVideoLink.isNotEmpty)
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: IconButton(
                      icon: const Icon(Icons.play_circle_outline,
                          color: Colors.white),
                      onPressed: () {
                        final Uri url = Uri.parse(product.productVideoLink);
                        launchUrl(url);
                      },
                    ),
                  ),
              ],
            ),
            ListTile(
              title: Text(
                product.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(product.description),
              trailing: Text('Price: \$${product.price}'),
            ),
          ],
        ),
      ),
    );
  }
}
