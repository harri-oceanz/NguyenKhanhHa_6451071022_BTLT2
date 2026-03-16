import 'package:flutter/material.dart';
import '../utils/product_data.dart';
import '../widgets/product_image.dart';

class ProductDetailView extends StatelessWidget {

  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back, color: Colors.white,),
        actions: [
      Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Center(
            child: Text(
              "6451071022",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ),
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ProductImage(imageUrl: product.image),

              const SizedBox(height: 16),

              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "\$${product.price}",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                product.description,
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Add to Cart", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}